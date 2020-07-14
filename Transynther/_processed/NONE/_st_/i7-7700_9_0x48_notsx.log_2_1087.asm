.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x83a1, %rsi
nop
cmp %r13, %r13
mov (%rsi), %r11w
nop
xor $59482, %r15
lea addresses_UC_ht+0xd1e1, %rsi
lea addresses_A_ht+0x3aa7, %rdi
nop
sub %rax, %rax
mov $29, %rcx
rep movsw
nop
nop
nop
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0xc371, %r8
clflush (%r8)
nop
nop
nop
nop
nop
add $14719, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%r8)
nop
nop
nop
cmp %rdi, %rdi

// Load
lea addresses_WC+0x4ca1, %rsi
sub $40656, %r13
mov (%rsi), %r8w
nop
nop
sub $61192, %rdi

// REPMOV
lea addresses_PSE+0x56a1, %rsi
lea addresses_WT+0x46a1, %rdi
add $19120, %r10
mov $1, %rcx
rep movsl
nop
nop
nop
and $8931, %r8

// REPMOV
lea addresses_D+0x1b1ee, %rsi
lea addresses_normal+0x11c69, %rdi
cmp %r11, %r11
mov $51, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_D+0x1013b, %rsi
nop
nop
nop
cmp $3988, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
inc %r11

// Store
lea addresses_D+0x1674e, %rdi
nop
nop
nop
sub $61833, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovntdq %ymm3, (%rdi)
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_WC+0x11391, %r8
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, (%r8)
nop
nop
nop
nop
cmp $17399, %r13

// Store
lea addresses_A+0x105d1, %r10
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movups %xmm7, (%r10)
dec %rax

// Store
lea addresses_RW+0x19e03, %rsi
nop
nop
nop
nop
nop
add $806, %r11
movl $0x51525354, (%rsi)
nop
nop
nop
cmp %r13, %r13

// Faulty Load
lea addresses_WT+0x46a1, %rsi
nop
nop
sub %rcx, %rcx
mov (%rsi), %r10d
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WC', 'congruent': 9}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_PSE'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'33': 2}
33 33
*/
