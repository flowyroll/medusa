.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xa534, %rdx
cmp %r10, %r10
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rax
nop
nop
and $20491, %r8
lea addresses_A_ht+0x11cf4, %rsi
lea addresses_UC_ht+0x13990, %rdi
nop
nop
cmp %rbx, %rbx
mov $78, %rcx
rep movsw
nop
and $32829, %rsi
lea addresses_WC_ht+0xa04c, %rsi
lea addresses_normal_ht+0x1c6f4, %rdi
nop
nop
xor $55036, %r8
mov $86, %rcx
rep movsl
nop
nop
nop
nop
nop
and $23559, %r8
lea addresses_D_ht+0xaaf4, %rcx
nop
nop
nop
nop
sub %r8, %r8
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x1baf4, %rcx
nop
nop
xor $35438, %rdx
movw $0x6162, (%rcx)
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0x1b2f4, %rax
and $29423, %r10
movl $0x61626364, (%rax)
nop
nop
nop
cmp $24515, %rsi
lea addresses_UC_ht+0x14ef4, %rsi
nop
nop
sub $33285, %rdi
movb (%rsi), %r10b
nop
nop
and $44876, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_US+0xdaf4, %rbx
inc %rsi
movb $0x51, (%rbx)
nop
add %r14, %r14

// Store
lea addresses_A+0xd4f4, %r13
nop
xor %r10, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
nop
nop
inc %r14

// Faulty Load
mov $0x204a1500000002f4, %r10
nop
nop
nop
nop
nop
and $44227, %rsi
movups (%r10), %xmm7
vpextrq $1, %xmm7, %rbx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'46': 115, '45': 12028, '00': 6606, '48': 3080}
45 00 00 48 45 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 00 45 45 00 45 45 48 00 45 00 45 48 45 45 48 45 45 48 00 45 48 48 45 48 45 48 45 45 48 00 48 45 45 00 45 45 48 00 45 48 00 45 48 45 45 00 45 48 45 00 48 45 48 45 00 45 45 48 45 00 00 45 48 45 48 48 45 45 45 45 00 45 45 45 48 00 48 45 45 00 45 45 48 00 48 45 45 00 45 00 45 45 45 45 45 00 48 00 45 45 45 00 45 45 00 45 45 48 00 00 45 45 00 45 48 45 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 46 45 45 48 00 48 45 45 00 45 45 48 00 00 45 00 45 48 45 48 45 48 45 00 00 45 00 45 45 48 00 45 00 45 45 00 00 45 00 48 48 45 45 00 00 45 00 00 45 00 45 45 48 45 45 00 48 45 46 45 45 00 45 45 00 45 45 48 45 00 00 45 48 45 48 45 45 48 00 45 00 00 48 45 45 00 45 00 45 48 45 45 00 45 00 45 00 00 45 45 45 45 00 45 48 45 48 00 48 45 45 45 45 45 00 45 45 00 45 45 00 45 45 48 00 00 45 45 45 48 00 48 45 45 00 45 45 00 45 45 00 00 00 45 45 00 45 45 00 45 00 45 45 45 48 00 45 45 45 00 45 45 45 48 00 48 00 45 45 00 00 48 45 00 48 45 00 45 45 48 00 45 00 45 45 00 45 00 45 45 00 45 45 45 45 48 45 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 45 45 00 45 45 45 00 45 45 48 00 48 48 00 45 48 45 45 00 45 00 00 45 48 45 00 00 45 00 00 45 48 48 45 48 45 00 45 45 00 48 45 48 48 45 48 45 45 00 45 48 45 00 45 45 00 45 45 45 45 45 48 00 00 45 45 45 48 45 48 45 00 48 45 48 45 00 48 45 48 45 00 00 45 46 00 48 45 45 00 45 45 45 00 45 45 00 45 45 48 00 48 45 45 00 45 45 00 45 45 48 00 45 00 00 45 48 45 00 45 45 00 00 45 00 45 00 45 45 48 00 00 45 00 45 45 45 00 45 45 48 00 48 45 45 00 45 45 00 45 45 48 00 00 00 45 45 48 00 48 45 45 00 45 45 48 00 00 00 48 45 00 00 45 48 45 45 00 45 45 00 45 45 00 45 45 48 00 00 45 45 00 45 45 00 45 45 45 45 45 00 45 45 00 45 45 48 00 45 48 00 48 45 45 00 45 45 00 45 45 00 48 45 00 00 45 48 45 48 00 48 45 00 45 45 00 00 48 45 45 00 45 45 00 45 45 00 45 45 48 00 48 45 00 45 45 45 48 00 45 45 45 48 45 00 48 45 45 45 48 45 48 00 00 45 45 00 45 45 48 00 00 00 45 45 00 45 45 48 00 48 45 45 00 45 45 00 45 45 00 45 45 00 45 45 48 00 48 45 45 00 45 45 00 45 45 48 00 45 00 45 45 48 48 45 48 45 45 00 45 48 45 00 45 45 00 45 45 00 45 45 48 00 45 00 45 45 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 48 00 45 00 00 45 45 00 45 45 00 45 45 45 45 45 00 45 45 45 45 00 00 45 45 00 45 00 45 45 45 00 45 45 48 00 45 00 48 00 45 45 00 45 45 48 00 45 46 00 45 00 00 45 00 48 45 00 00 48 00 45 45 48 00 45 00 00 00 45 45 00 45 45 48 00 48 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 45 00 45 45 48 00 48 45 45 00 45 45 00 45 45 48 00 00 00 45 45 00 48 45 46 45 45 00 45 45 00 45 45 00 45 45 48 48 45 45 45 45 00 45 45 00 45 45 48 00 00 45 45 00 45 45 00 45 45 00 45 45 48 00 48 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 48 00 45 00 45 45 45 48 45 48 48 45 48 45 48 00 48 45 45 00 45 45 00 45 45 00 45 45 00 45 45 48 00 00 00 45 45 00 00 48 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 48 00 00 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 48 00 48 45 45 00 45 45 48 45 45 48 45 00 45 45 48 00
*/
