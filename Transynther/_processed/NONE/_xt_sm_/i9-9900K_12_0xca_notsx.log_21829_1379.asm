.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x16791, %r8
nop
sub $59085, %rbx
mov (%r8), %r11
nop
nop
nop
and $637, %r12
lea addresses_A_ht+0x358d, %rcx
nop
nop
nop
nop
nop
xor %r14, %r14
mov (%rcx), %rbx
sub %rcx, %rcx
lea addresses_A_ht+0xbaf5, %r12
nop
nop
nop
nop
nop
cmp $526, %r13
mov $0x6162636465666768, %r14
movq %r14, (%r12)
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_UC_ht+0x2fc5, %rbx
nop
nop
nop
nop
and $46428, %r11
mov (%rbx), %cx
xor %r8, %r8
lea addresses_UC_ht+0x1b513, %rsi
lea addresses_D_ht+0x1a75, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
and %r12, %r12
mov $31, %rcx
rep movsw
nop
cmp $29159, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0xda75, %rsi
lea addresses_UC+0x19f5, %rdi
add %r11, %r11
mov $126, %rcx
rep movsw
add %r11, %r11

// Store
lea addresses_A+0x15a91, %rcx
nop
nop
nop
nop
xor $59967, %r12
movl $0x51525354, (%rcx)
nop
nop
nop
add %r11, %r11

// Store
lea addresses_WT+0x4875, %r12
nop
nop
nop
nop
nop
sub $40777, %r11
mov $0x5152535455565758, %rbp
movq %rbp, (%r12)
and %r11, %r11

// Store
lea addresses_WC+0x6275, %rcx
nop
nop
nop
nop
nop
xor $38403, %r11
movw $0x5152, (%rcx)
cmp %rcx, %rcx

// Store
lea addresses_UC+0x1cf35, %rbp
nop
nop
nop
nop
nop
add $50954, %rax
mov $0x5152535455565758, %rcx
movq %rcx, (%rbp)
and %r11, %r11

// Store
lea addresses_PSE+0x1d275, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %r12, %r12
movb $0x51, (%rdi)
xor $5771, %rax

// Store
lea addresses_WT+0x1a75, %rcx
nop
nop
and %rdi, %rdi
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
add $31978, %rsi

// REPMOV
lea addresses_normal+0x14275, %rsi
lea addresses_WT+0x4d75, %rdi
nop
nop
nop
nop
nop
xor $31052, %rax
mov $123, %rcx
rep movsb
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_PSE+0x4a75, %r12
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r12)
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_normal+0x1bc75, %r12
nop
nop
xor $51098, %rax
movb $0x51, (%r12)
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_normal+0x6275, %r11
clflush (%r11)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movb $0x51, (%r11)
nop
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_RW+0x13275, %rsi
clflush (%rsi)
inc %rdi
movb $0x51, (%rsi)
cmp $62625, %rcx

// Faulty Load
lea addresses_PSE+0x4a75, %rdi
nop
nop
nop
nop
sub $46842, %rbp
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %rsi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC'}, 'dst': {'same': True, 'congruent': 7, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
