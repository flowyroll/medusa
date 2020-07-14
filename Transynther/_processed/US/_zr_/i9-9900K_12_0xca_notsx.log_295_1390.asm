.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x8612, %r11
nop
nop
inc %r8
mov (%r11), %r12w
nop
nop
nop
nop
nop
inc %rdx
lea addresses_D_ht+0xe26a, %rbp
nop
nop
dec %r15
movw $0x6162, (%rbp)
nop
nop
nop
add $58478, %r11
lea addresses_normal_ht+0xd212, %rsi
lea addresses_A_ht+0x15412, %rdi
nop
nop
nop
nop
inc %r11
mov $6, %rcx
rep movsl
nop
xor $15779, %rsi
lea addresses_WT_ht+0xe36, %rdi
nop
nop
sub $36191, %r12
movw $0x6162, (%rdi)
nop
nop
nop
nop
xor $10019, %rsi
lea addresses_UC_ht+0xa32a, %rsi
lea addresses_WC_ht+0x1af12, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $8921, %r8
mov $3, %rcx
rep movsb
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x10c12, %r12
nop
nop
nop
nop
xor %r11, %r11
movb (%r12), %cl
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x6712, %rsi
nop
nop
add $20998, %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm3
movups %xmm3, (%rsi)
nop
nop
inc %r14
lea addresses_normal_ht+0xc812, %rsi
nop
nop
nop
nop
add $52460, %rdx
movw $0x6162, (%rsi)
nop
nop
nop
nop
add $32842, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0x12212, %rsi
lea addresses_WC+0xdbc2, %rdi
clflush (%rdi)
nop
nop
and $48068, %rbx
mov $18, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rdi, %rdi

// Faulty Load
lea addresses_US+0x11612, %rbx
nop
nop
nop
nop
and $22488, %r10
mov (%rbx), %r8
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'00': 295}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
