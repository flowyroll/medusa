.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1813, %rax
nop
inc %rbp
movl $0x61626364, (%rax)
nop
dec %r14
lea addresses_normal_ht+0x1189b, %rcx
nop
nop
dec %r13
movw $0x6162, (%rcx)
add %rax, %rax
lea addresses_A_ht+0xfb9b, %rsi
lea addresses_WC_ht+0x875b, %rdi
nop
nop
nop
nop
add $53807, %r14
mov $24, %rcx
rep movsb
inc %r13
lea addresses_WT_ht+0x410b, %rsi
lea addresses_normal_ht+0x1a49b, %rdi
nop
nop
inc %rbp
mov $0, %rcx
rep movsw
nop
xor $63123, %r13
lea addresses_UC_ht+0x1133, %rbx
nop
nop
add %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
and $0xffffffffffffffc0, %rbx
movaps %xmm1, (%rbx)
nop
nop
dec %rsi
lea addresses_UC_ht+0x11c33, %rsi
lea addresses_WC_ht+0x9fb, %rdi
nop
sub %rax, %rax
mov $105, %rcx
rep movsq
nop
nop
and %rax, %rax
lea addresses_D_ht+0x17b9b, %r14
clflush (%r14)
nop
xor $1023, %rax
mov $0x6162636465666768, %rbp
movq %rbp, (%r14)
nop
nop
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x789b, %rbx
nop
nop
cmp %rbp, %rbp
movb $0x61, (%rbx)
nop
nop
sub $278, %rbp
lea addresses_WC_ht+0x1d81b, %rdi
nop
nop
nop
nop
nop
and $2976, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rdi)
nop
sub %rbp, %rbp
lea addresses_WT_ht+0x8c2b, %rdi
nop
nop
nop
add $46252, %rcx
movb $0x61, (%rdi)
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x131b, %rsi
lea addresses_normal_ht+0xc6db, %rdi
and $11243, %r14
mov $49, %rcx
rep movsb
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0xd39b, %r13
nop
nop
nop
nop
nop
and %rax, %rax
mov $0x6162636465666768, %rbx
movq %rbx, (%r13)
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x9b, %rdi
nop
nop
nop
dec %rax
mov (%rdi), %r14d
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x1209b, %rsi
cmp %rcx, %rcx
movups (%rsi), %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0xd43b, %rsi
lea addresses_D_ht+0x1c7bb, %rdi
dec %r14
mov $68, %rcx
rep movsl
nop
nop
nop
nop
nop
add $36880, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rbp
push %rdx

// Store
lea addresses_WT+0x8c2b, %r15
nop
nop
nop
cmp $1414, %r10
movb $0x51, (%r15)
nop
nop
nop
nop
cmp $51250, %r10

// Faulty Load
lea addresses_normal+0x1509b, %r15
nop
nop
sub $25888, %rdx
movaps (%r15), %xmm3
vpextrq $0, %xmm3, %rbp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rdx
pop %rbp
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'8d': 1, '9a': 3, '8e': 1, '86': 1, '84': 1, '83': 1, '48': 7241, '00': 14580}
00 00 00 00 00 00 00 00 00 48 00 00 00 48 48 48 00 48 48 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 48 00 00 00 00 00 00 00 48 48 00 00 48 00 00 00 00 48 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 48 48 00 00 00 48 48 00 00 48 48 00 48 48 00 48 48 48 00 00 00 48 48 48 00 48 48 48 00 00 00 00 48 00 00 00 00 00 48 48 00 00 00 00 00 00 48 00 00 48 48 48 48 48 48 48 00 00 00 48 48 48 00 48 00 48 48 48 48 48 48 00 48 48 00 00 00 00 48 48 48 00 48 00 00 00 00 48 00 00 48 00 48 00 48 48 00 00 00 00 48 48 00 48 00 00 00 00 48 00 00 48 48 48 00 00 48 48 00 00 00 00 00 00 48 48 48 00 48 48 48 48 00 48 48 48 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 48 48 48 00 00 00 48 00 00 00 48 00 48 48 48 48 00 00 48 48 48 00 48 00 00 48 48 48 48 48 48 00 48 00 48 48 00 00 48 48 00 48 00 48 00 48 00 48 00 48 48 48 00 00 00 48 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 00 00 48 00 00 00 00 00 00 00 48 48 48 48 00 48 48 48 00 00 48 00 48 00 00 00 00 48 48 48 00 48 48 48 48 00 48 00 00 00 48 48 00 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 48 00 00 48 48 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 48 48 00 00 00 48 48 48 00 48 00 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 48 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 48 00 48 48 48 00 00 00 00 48 48 00 48 48 00 00 00 48 00 00 00 48 48 00 48 00 00 00 00 00 00 48 00 00 48 48 48 00 48 00 00 00 00 00 48 48 00 48 00 00 00 00 48 00 00 00 48 00 00 00 48 48 48 00 48 00 48 00 48 48 48 00 00 00 00 48 00 00 48 00 00 00 48 48 48 48 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 48 48 00 48 00 00 00 00 00 00 00 00 48 48 48 48 48 48 00 48 48 48 48 48 00 48 00 48 00 00 00 00 00 00 00 48 48 00 48 00 00 00 00 00 00 00 48 00 00 48 00 00 00 48 00 00 48 48 00 00 00 00 48 48 48 00 00 00 00 00 00 00 48 00 48 48 00 00 48 00 00 00 48 00 00 00 48 00 48 00 00 48 00 48 48 00 00 48 00 00 00 00 00 00 00 48 48 00 00 48 48 00 00 00 48 00 48 48 00 48 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 48 00 48 00 00 48 48 00 00 00 00 00 48 00 48 00 00 00 00 48 00 00 00 48 00 00 48 00 48 48 00 48 48 00 00 00 00 00 00 00 00 48 00 00 00 48 48 48 48 00 00 48 00 00 48 00 00 48 00 48 48 00 48 00 48 00 00 00 48 00 00 00 48 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 48 48 48 48 00 00 00 00 48 00 48 48 48 00 48 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 48 00 48 48 00 00 48 48 00 00 00 00 48 00 00 00 48 48 00 48 48 00 00 48 48 00 48 00 48 00 00 48 48 00 00 00 00 00 48 00 00 00 00 48 00 00 48 48 00 48 00 00 00 48 48 00 00 00 00 00 48 00 48 00 00 00 00 00 48 48 48 48 00 00 00 00 48 48 00 48 48 00 48 00 48 00 48 48 48 48 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 48 48 48 48 00 00 48 00 48 00
*/
