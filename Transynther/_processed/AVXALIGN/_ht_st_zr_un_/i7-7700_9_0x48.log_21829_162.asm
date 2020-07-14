.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xfb7e, %rax
nop
nop
and $56008, %r10
movw $0x6162, (%rax)
nop
nop
sub %r9, %r9
lea addresses_normal_ht+0xb7fe, %rbx
clflush (%rbx)
nop
nop
nop
add %r9, %r9
mov (%rbx), %rdi
nop
nop
nop
sub %rax, %rax
lea addresses_A_ht+0x1ca9e, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
xor $18195, %r13
mov (%rbx), %r10w
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x1b712, %rbx
nop
nop
and $41426, %r13
movups (%rbx), %xmm2
vpextrq $0, %xmm2, %r9
sub $34878, %rdi
lea addresses_WC_ht+0x377e, %r9
nop
dec %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x11f7e, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
dec %rax
movb $0x61, (%rbx)
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0xb77e, %r10
nop
nop
nop
nop
dec %r9
mov (%r10), %rax
nop
add %r13, %r13
lea addresses_WC_ht+0x90fe, %rsi
lea addresses_WC_ht+0x117fe, %rdi
nop
nop
nop
and $33177, %rax
mov $85, %rcx
rep movsq
add %rdi, %rdi
lea addresses_A_ht+0x11804, %rsi
lea addresses_D_ht+0x151fc, %rdi
nop
nop
add %r10, %r10
mov $78, %rcx
rep movsq
and $5526, %rbx
lea addresses_D_ht+0x332a, %r14
nop
nop
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %r13
movq %r13, (%r14)
nop
nop
nop
nop
nop
xor %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_normal+0x1378e, %rax
clflush (%rax)
nop
nop
nop
nop
nop
add %r10, %r10
movb $0x51, (%rax)
nop
cmp $5983, %r12

// Store
mov $0x49f1910000000fce, %rax
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movb $0x51, (%rax)
nop
nop
xor %rdx, %rdx

// Faulty Load
lea addresses_WC+0x277e, %rdx
nop
nop
cmp %rax, %rax
mov (%rdx), %rcx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'53': 573, '47': 7, '3c': 17, 'ff': 11715, '49': 5, '48': 1913, '80': 165, '44': 27, 'de': 6, 'b2': 1, '01': 1794, '45': 297, '00': 5307, 'c0': 2}
ff ff 48 00 ff ff 00 00 00 ff ff 01 53 80 53 ff 48 ff 00 ff 48 ff ff 48 45 ff ff 00 48 ff ff ff ff ff ff 01 ff 01 ff 00 48 ff 00 00 48 00 48 48 ff ff ff ff 48 00 00 ff ff 53 ff 53 00 ff 00 ff ff 53 ff 00 00 ff ff ff 00 48 00 ff ff ff ff 48 ff ff ff 00 00 ff ff ff 00 00 ff 00 00 ff ff ff ff ff ff 01 00 53 53 ff 53 48 ff 00 ff ff ff 45 ff ff ff 53 ff 00 48 48 00 ff ff ff ff 44 ff ff 01 ff 00 ff ff 00 00 00 ff ff 48 00 ff ff ff 01 53 00 00 ff ff 00 ff ff ff 01 ff 48 ff ff 01 53 ff ff ff 01 ff 01 ff 01 ff ff 00 ff ff 01 ff 01 ff 01 ff 00 ff ff 01 00 ff ff ff ff 00 ff ff 48 ff 48 ff 00 ff ff 00 48 ff 00 00 00 00 00 ff 00 ff ff ff 48 48 ff 00 ff 00 00 00 00 ff ff 48 48 ff 00 ff 00 00 00 48 ff 48 00 00 ff ff 00 ff ff ff 00 ff 48 ff 00 48 00 00 ff 00 ff 48 00 ff ff ff 00 48 ff 00 ff 00 00 ff 48 ff ff ff 48 ff ff ff 00 ff 01 ff 48 00 ff 00 ff ff 00 00 ff ff ff 00 ff ff 00 ff 01 ff 00 ff ff ff 01 ff 01 ff 01 ff 01 ff 01 00 ff ff 01 ff ff 01 ff ff 01 00 48 ff ff ff 00 00 ff 80 53 ff ff ff ff ff 01 ff ff ff ff 53 ff 01 ff ff 00 ff 01 ff 01 00 ff ff 48 ff ff ff 01 ff 00 ff 01 00 48 ff 00 00 ff 00 ff 48 ff ff ff ff ff ff ff 01 00 ff 48 ff ff 01 ff ff ff 01 ff 01 48 ff 00 ff ff ff ff 01 00 ff 53 00 00 48 ff 00 ff 48 00 48 ff ff 48 ff 00 48 00 ff 00 48 48 ff 48 ff 48 ff ff 00 00 ff ff ff ff ff ff 01 48 ff 48 ff 53 48 ff ff ff 00 ff 00 ff ff 00 00 ff ff 48 ff ff 00 ff 53 48 00 53 ff 48 ff ff ff 00 ff 00 44 48 80 00 00 48 00 00 ff 48 48 ff ff 00 48 ff ff ff 53 00 ff ff ff ff ff 48 ff 48 ff ff ff 01 00 ff ff 01 53 00 00 53 ff ff ff 00 ff 53 ff ff ff 00 ff 01 48 ff ff 00 ff 80 00 ff ff 00 00 ff ff ff 00 ff 00 48 ff ff 00 ff 00 ff 48 ff ff ff 00 ff 01 ff ff 00 ff 45 45 00 00 00 ff ff 00 ff ff 00 00 ff 80 ff 00 ff ff ff ff ff ff 01 ff ff ff ff 01 ff 01 ff 48 00 ff ff 00 00 00 ff 48 ff 44 ff 00 ff ff 00 ff ff 00 ff ff ff ff ff 01 ff 01 00 00 45 ff ff ff ff ff 01 ff 01 ff ff ff 00 00 48 ff ff 00 00 ff 48 48 ff ff 00 ff 00 ff ff ff 48 00 00 ff ff ff ff 48 ff ff ff ff 01 ff 48 00 ff 00 48 ff ff 00 ff ff 00 ff 00 ff 00 ff ff ff ff 00 00 ff 48 ff ff 00 48 45 ff 00 00 48 ff ff 00 ff 00 00 ff ff ff 00 ff ff 00 00 ff 00 ff ff ff ff ff 48 53 00 00 ff 80 00 ff ff ff 00 ff ff ff 00 ff 00 ff 00 00 ff ff 00 ff ff ff 00 00 ff 00 49 ff ff ff 48 00 ff 00 48 ff ff ff 00 ff 00 ff 00 00 ff ff ff 48 ff 00 ff ff 48 00 ff ff 00 45 ff ff ff 48 48 53 ff ff 00 00 ff 00 53 00 00 ff ff 00 ff ff ff 00 ff ff 00 ff 45 ff 53 ff ff ff 00 ff ff 01 ff 53 00 00 ff 48 00 48 00 ff ff ff 00 ff 00 48 ff ff ff 00 ff 48 00 45 ff 48 53 ff ff 48 ff 48 ff 00 48 48 ff 00 00 ff ff ff ff 48 ff 00 53 48 ff ff ff 00 ff ff 00 ff 48 00 ff ff 48 ff 00 ff 00 ff ff ff 00 ff ff 01 48 ff ff ff ff 01 ff 01 00 ff 53 ff ff 01 ff 48 ff 01 ff 01 ff 01 ff 00 00 ff 53 ff ff 01 ff ff 01 ff 01 00 ff ff 00 48 ff ff ff 01 ff ff 53 ff 80 ff 53 ff ff 48 ff 48 ff ff ff ff ff ff 48 00 ff 48 00 ff 00 00 ff 00 ff ff ff ff 48 00 80 ff ff 00 ff ff 00 ff 53 ff ff ff ff 01 ff 01 48 ff ff 01 ff 00 00 00 00 48 ff 48 ff ff ff ff ff ff ff 01 ff ff
*/
