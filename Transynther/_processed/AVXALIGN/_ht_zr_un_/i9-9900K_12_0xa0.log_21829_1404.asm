.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x78bc, %rbx
nop
nop
nop
nop
nop
sub $39415, %r15
vmovups (%rbx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbp
nop
dec %r10
lea addresses_normal_ht+0x1d9b8, %rsi
lea addresses_WC_ht+0x11974, %rdi
nop
nop
nop
nop
and $18767, %r10
mov $75, %rcx
rep movsl
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0xd454, %rcx
nop
lfence
movw $0x6162, (%rcx)
add %rdi, %rdi
lea addresses_normal_ht+0x7174, %rsi
lea addresses_WT_ht+0x8154, %rdi
nop
nop
nop
nop
nop
add $60631, %r8
mov $11, %rcx
rep movsw
nop
nop
nop
nop
inc %r10
lea addresses_D_ht+0xc574, %rsi
lea addresses_UC_ht+0x6e74, %rdi
nop
nop
nop
nop
nop
add $55259, %r10
mov $71, %rcx
rep movsq
nop
nop
nop
nop
nop
add $53646, %r8
lea addresses_UC_ht+0x1d7e9, %r10
nop
nop
nop
nop
nop
add $60336, %rdi
and $0xffffffffffffffc0, %r10
movaps (%r10), %xmm2
vpextrq $1, %xmm2, %rbp
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x10bf4, %rsi
lea addresses_normal_ht+0x1f74, %rdi
nop
nop
nop
nop
nop
inc %r10
mov $116, %rcx
rep movsb
nop
nop
nop
sub $60925, %rdi
lea addresses_A_ht+0x2d59, %rdi
nop
nop
nop
nop
and $19422, %rsi
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
xor %r8, %r8
lea addresses_WT_ht+0x1cf74, %rbp
nop
add $49839, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x7e94, %rsi
lea addresses_WC_ht+0x3774, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $11254, %r10
mov $11, %rcx
rep movsw
nop
nop
nop
mfence
lea addresses_A_ht+0x1053c, %rbp
nop
nop
sub $45610, %r15
movl $0x61626364, (%rbp)
nop
and $54585, %r15
lea addresses_A_ht+0x16774, %rsi
lea addresses_UC_ht+0x111b4, %rdi
nop
xor %rbp, %rbp
mov $122, %rcx
rep movsw
nop
sub $9762, %r15
lea addresses_WT_ht+0xfbc8, %rsi
lea addresses_D_ht+0x1d662, %rdi
nop
nop
nop
nop
nop
and $20121, %r8
mov $103, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x9fac, %r10
nop
nop
nop
cmp %rbp, %rbp
movb $0x61, (%r10)
cmp $40662, %rbx
lea addresses_WC_ht+0x1a7f4, %r8
clflush (%r8)
and %rcx, %rcx
movb (%r8), %r10b
nop
sub $51649, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rdx

// Faulty Load
mov $0x11a0e10000000774, %r15
nop
nop
nop
nop
cmp %r8, %r8
movaps (%r15), %xmm6
vpextrq $1, %xmm6, %rdx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rdx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'src': {'same': True, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'44': 669, '48': 4187, '47': 68, 'ff': 1, '00': 2772, '46': 5014, '45': 9117, '08': 1}
48 48 45 45 46 45 00 46 45 48 46 45 00 45 48 00 45 48 46 45 00 45 48 46 45 48 46 45 00 45 48 46 45 46 45 48 44 45 46 45 00 45 48 46 45 00 45 48 46 48 46 45 00 45 48 46 45 00 45 48 44 45 46 45 00 45 48 46 45 00 45 48 44 45 46 45 00 45 48 46 45 00 45 48 45 45 00 46 45 00 46 45 46 45 45 46 45 48 44 45 46 45 00 45 48 46 45 48 46 45 00 45 48 46 45 00 45 48 46 45 46 45 48 44 45 00 46 45 00 45 48 46 45 48 46 45 48 44 45 46 45 48 45 48 46 45 48 46 45 00 45 45 46 45 48 45 48 46 45 00 45 48 44 45 46 45 48 45 48 46 45 00 45 48 46 45 00 45 48 45 45 46 45 48 46 48 46 45 00 45 48 46 45 00 45 48 44 45 46 45 48 00 45 48 46 45 46 45 48 44 45 00 46 45 00 45 48 46 45 00 45 48 44 45 46 45 00 45 48 46 45 00 46 45 00 45 45 46 45 48 46 45 48 46 45 48 46 45 48 44 45 00 46 45 00 45 48 46 45 48 46 45 00 45 45 00 46 45 00 45 48 46 45 48 46 45 00 45 45 00 46 45 00 45 48 46 45 48 46 45 48 45 48 00 45 48 46 45 00 45 48 46 45 00 46 45 48 45 45 46 45 00 45 48 46 45 00 46 45 00 45 45 00 46 45 00 45 48 46 45 00 45 48 44 45 00 45 48 46 45 46 45 48 46 48 46 45 00 45 48 46 45 00 45 48 44 45 46 45 48 46 45 46 45 48 46 45 48 46 45 00 45 48 46 45 46 45 00 45 48 46 45 00 45 48 46 45 45 46 45 00 46 45 46 45 00 45 48 46 45 46 45 48 44 45 46 45 48 45 48 46 45 45 48 46 45 00 45 48 46 45 46 45 48 44 45 46 45 48 45 48 46 45 00 45 48 46 45 00 45 48 45 48 46 45 00 45 48 46 45 00 45 48 45 45 46 45 00 45 48 46 45 48 46 45 48 46 45 48 46 45 48 46 45 00 45 48 46 45 48 46 45 00 46 45 00 45 48 46 45 00 45 48 46 45 00 45 48 46 45 00 45 48 45 48 46 45 00 45 48 46 45 00 45 48 45 48 46 45 00 45 48 46 45 00 45 48 46 45 00 45 48 46 48 46 45 00 45 48 46 45 48 46 45 00 45 45 46 45 48 45 48 46 45 00 45 48 46 45 46 45 48 46 45 46 45 48 46 45 46 45 00 46 45 00 45 48 46 45 48 46 45 00 45 45 00 46 45 00 45 48 46 45 00 45 48 44 45 00 45 48 45 45 46 45 48 44 45 46 45 00 46 45 00 46 45 45 48 46 45 00 45 48 45 48 46 45 00 45 48 46 45 46 45 48 46 45 46 45 48 46 48 46 45 00 45 48 46 45 00 45 48 46 45 46 45 48 46 45 46 45 00 45 48 46 45 48 46 45 00 45 48 46 45 48 46 45 00 45 45 46 45 48 46 45 46 45 00 45 48 46 45 00 45 48 45 45 46 45 00 45 45 46 45 00 45 48 46 45 46 45 48 44 45 46 45 48 46 45 46 45 48 46 45 48 46 45 00 45 48 46 45 00 45 48 44 45 46 45 00 45 48 46 45 00 45 48 45 45 46 45 48 45 48 46 45 00 46 45 00 45 48 46 45 45 48 46 45 46 45 48 44 45 46 45 00 45 48 46 45 48 46 45 00 45 45 46 45 48 46 45 00 45 45 00 45 48 46 45 00 45 48 46 45 00 45 48 44 45 46 45 00 45 48 46 45 00 45 48 44 45 46 45 00 45 48 46 45 48 44 45 00 45 45 46 45 00 45 48 46 45 48 46 45 48 44 45 46 45 48 46 45 48 46 45 46 45 48 44 45 46 45 48 47 45 00 45 45 00 45 48 45 48 46 45 00 45 48 46 45 48 46 45 48 45 48 46 45 00 45 48 46 45 46 45 00 45 45 46 45 00 45 48 46 45 46 45 48 44 45 46 45 48 47 45 46 45 48 46 45 48 44 45 46 45 48 46 45 46 45 45 00 45 48 46 45 00 45 48 46 45 00 45 48 46 45 48 45 48 46 45 48 46 45 48 46 45 46 45 00 46 45 46 45 00 45 48 46 45 00 45 48 46 48 46 45 00 45 48 46 45 48 46 45 00 45 45 46 45 48 46 45 46 45 00 45 48 46 45 45
*/
