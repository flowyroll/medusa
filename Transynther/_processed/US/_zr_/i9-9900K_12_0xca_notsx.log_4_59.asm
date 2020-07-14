.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xb379, %r11
nop
inc %rax
movw $0x6162, (%r11)
nop
add $27211, %rdi
lea addresses_A_ht+0x1a059, %r8
nop
inc %r9
mov (%r8), %r12d
nop
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x1c679, %rdi
clflush (%rdi)
nop
sub $4133, %rax
mov (%rdi), %r11w
nop
cmp %r12, %r12
lea addresses_A_ht+0x16b79, %rsi
lea addresses_WC_ht+0xb79, %rdi
nop
nop
nop
and %r8, %r8
mov $35, %rcx
rep movsl
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x12f9c, %rsi
lea addresses_A_ht+0x11e41, %rdi
and $28794, %rax
mov $38, %rcx
rep movsq
nop
nop
and $54068, %rcx
lea addresses_normal_ht+0x19649, %rsi
lea addresses_normal_ht+0x144c1, %rdi
nop
sub %r9, %r9
mov $34, %rcx
rep movsl
add $39581, %r11
lea addresses_A_ht+0x1d029, %rcx
nop
nop
nop
add $51387, %rdi
mov (%rcx), %si
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x6b79, %r12
inc %r8
mov (%r12), %r11d
and $38421, %rax
lea addresses_WT_ht+0x93f9, %r8
nop
sub %rdx, %rdx
movups (%r8), %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x1aec9, %rsi
nop
nop
nop
nop
nop
add $47378, %rax
movw $0x6162, (%rsi)
add %r8, %r8
lea addresses_A_ht+0x10279, %rsi
dec %rdx
movl $0x61626364, (%rsi)
and $56879, %rsi
lea addresses_WT_ht+0x19b79, %rdx
nop
nop
nop
nop
add %rsi, %rsi
movl $0x61626364, (%rdx)
nop
nop
dec %r9
lea addresses_D_ht+0xe0d9, %rsi
lea addresses_UC_ht+0x179, %rdi
nop
and $1608, %r8
mov $127, %rcx
rep movsb
nop
nop
nop
nop
add $43846, %r12
lea addresses_WC_ht+0xb79, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
and %r11, %r11
movups (%rdx), %xmm6
vpextrq $1, %xmm6, %r12
nop
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rax
push %rbx

// Faulty Load
lea addresses_US+0x14b79, %r15
nop
nop
sub %r13, %r13
mov (%r15), %r9
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'00': 4}
00 00 00 00
*/
