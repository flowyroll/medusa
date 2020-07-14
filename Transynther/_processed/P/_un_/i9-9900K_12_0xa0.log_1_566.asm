.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x304d, %r12
nop
nop
nop
nop
nop
and $25112, %rdx
movups (%r12), %xmm3
vpextrq $1, %xmm3, %r8
nop
nop
nop
nop
nop
xor $43902, %rdx
lea addresses_WT_ht+0xa64d, %rsi
lea addresses_WT_ht+0x11bcd, %rdi
nop
nop
nop
and %rbx, %rbx
mov $38, %rcx
rep movsb
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x1234d, %rsi
lea addresses_normal_ht+0x12c4d, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov $17, %rcx
rep movsb
nop
nop
nop
add $20578, %r8
lea addresses_UC_ht+0xa0cd, %rbx
lfence
movb $0x61, (%rbx)
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rax
push %rdi
push %rdx
push %rsi

// Load
lea addresses_US+0x128cd, %rsi
clflush (%rsi)
inc %rax
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
nop
add %rax, %rax

// Store
lea addresses_A+0x1f04d, %rsi
xor %r11, %r11
mov $0x5152535455565758, %r13
movq %r13, (%rsi)
nop
nop
xor $50979, %rax

// Store
lea addresses_normal+0x1b70d, %r13
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movups %xmm5, (%r13)
nop
inc %r13

// Store
lea addresses_US+0x1f391, %rdi
nop
nop
nop
nop
cmp $64268, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rdi)
add %rdi, %rdi

// Load
lea addresses_UC+0x1a04d, %r13
nop
nop
nop
nop
nop
dec %rax
movups (%r13), %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
nop
nop
and $6678, %rax

// Store
lea addresses_RW+0x10ccd, %rdx
cmp $19343, %rax
movl $0x51525354, (%rdx)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r13
nop
nop
nop
nop
nop
dec %rsi

// Load
lea addresses_UC+0x1714d, %rdi
nop
nop
nop
add $41007, %r13
movb (%rdi), %r11b
nop
nop
sub %rdx, %rdx

// Store
lea addresses_WT+0x1a14d, %rsi
nop
nop
nop
and %rdi, %rdi
movb $0x51, (%rsi)
nop
nop
dec %r12

// Store
lea addresses_US+0x1ee2f, %r11
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%r11)
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_D+0x1e2b3, %r12
sub $59804, %rax
movw $0x5152, (%r12)
nop
nop
cmp %rdx, %rdx

// Load
lea addresses_normal+0x10c4d, %r11
nop
nop
nop
nop
nop
cmp $20278, %r13
movups (%r11), %xmm3
vpextrq $0, %xmm3, %rdx
nop
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_RW+0x934d, %rdx
xor $40184, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
nop
sub %rax, %rax

// Faulty Load
mov $0xc4d, %rdx
nop
nop
nop
nop
nop
and $23644, %rax
mov (%rdx), %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_RW', 'AVXalign': True, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 1}}
{'9b': 1}
9b
*/
