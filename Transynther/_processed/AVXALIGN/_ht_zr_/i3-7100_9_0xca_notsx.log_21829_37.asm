.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x83ae, %r8
nop
nop
and %rbx, %rbx
movb $0x61, (%r8)
and $41450, %r14
lea addresses_A_ht+0x3fd3, %rsi
lea addresses_normal_ht+0x3d3, %rdi
nop
nop
xor %rax, %rax
mov $67, %rcx
rep movsb
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x6bd3, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x1b3d3, %rax
nop
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rax)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x1c613, %r13
nop
xor $42328, %rcx
mov $0x6162636465666768, %r14
movq %r14, (%r13)
nop
nop
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x1a953, %rbx
xor %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
nop
inc %r8
lea addresses_UC_ht+0x1bb33, %r8
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r13
movq %r13, (%r8)
and $27274, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rax
push %rcx

// Store
mov $0xc03, %rax
nop
nop
nop
nop
and $27261, %rcx
movl $0x51525354, (%rax)
nop
nop
nop
dec %rcx

// Store
mov $0x1cf, %r13
clflush (%r13)
nop
nop
nop
nop
nop
and %rcx, %rcx
movl $0x51525354, (%r13)
inc %r10

// Faulty Load
lea addresses_WC+0x1fbd3, %r8
add %r11, %r11
vmovaps (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'45': 11836, '00': 9540, '47': 453}
45 00 00 45 45 00 45 00 00 45 00 00 00 45 00 45 00 00 00 00 45 45 45 45 45 45 45 45 00 45 00 45 00 00 45 45 45 00 00 45 45 00 47 45 00 45 45 00 00 00 00 45 00 00 45 45 00 00 00 00 00 45 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 47 45 45 00 00 00 00 45 45 45 00 45 45 00 45 45 45 45 00 45 00 00 00 00 00 00 00 45 45 45 45 00 00 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 00 45 00 45 45 00 00 45 00 00 00 45 00 45 47 45 00 45 45 45 00 00 00 45 45 00 45 45 45 00 45 00 45 45 00 00 00 00 45 45 00 45 00 45 45 45 45 00 45 45 45 45 45 00 00 00 00 45 45 00 45 45 00 45 00 00 45 45 00 00 45 00 45 45 00 45 45 45 00 45 45 00 45 45 00 00 00 45 00 45 00 45 45 45 45 45 00 45 00 45 45 45 45 00 45 45 45 45 00 45 00 45 00 00 00 45 00 45 45 00 45 45 45 00 45 45 45 00 00 45 00 45 47 45 00 00 00 45 45 45 45 45 00 45 45 00 00 00 00 00 45 00 45 45 45 45 45 00 00 00 45 00 00 45 00 45 00 00 00 00 00 45 00 00 45 45 45 00 00 00 45 45 45 00 45 00 45 00 45 45 45 45 45 00 00 00 00 45 45 00 45 45 45 45 00 00 45 00 45 00 45 00 00 45 00 45 45 45 45 00 45 00 45 00 00 00 45 45 00 45 45 00 45 45 45 45 45 45 00 45 00 00 00 00 00 45 00 45 00 45 00 00 45 45 00 45 00 45 00 45 45 00 00 00 00 45 45 00 45 45 45 00 00 00 00 00 45 00 00 00 00 45 45 45 45 45 00 45 45 00 45 45 45 45 45 00 45 45 45 00 00 00 45 00 00 47 00 45 00 47 45 45 45 00 45 45 45 00 00 45 45 00 45 00 45 45 45 45 00 00 45 00 00 45 00 00 00 00 45 45 45 45 45 00 00 45 00 45 45 45 00 00 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 45 00 45 45 45 45 45 00 00 45 00 00 45 45 45 00 45 00 00 45 00 45 45 00 00 45 45 45 00 00 45 45 00 00 45 00 00 00 45 45 00 00 00 45 45 00 47 45 00 45 45 45 00 45 00 00 47 00 00 00 00 45 00 45 00 00 45 00 00 00 45 45 45 45 45 45 45 00 45 45 45 00 00 00 47 00 45 00 45 45 00 45 45 00 00 45 00 45 45 45 00 45 00 45 45 45 45 45 00 45 45 00 45 00 00 00 45 45 00 00 47 45 45 00 00 45 45 45 00 45 45 00 45 45 00 00 00 45 00 45 45 00 45 45 45 45 00 45 45 45 45 45 00 00 45 45 45 00 00 45 45 00 00 00 00 45 45 45 00 00 45 00 45 00 00 00 00 00 45 45 45 00 00 45 45 00 45 00 00 00 45 45 00 00 00 00 00 45 00 45 00 00 45 45 45 00 45 45 45 45 00 47 45 45 00 00 45 45 00 45 00 45 00 45 00 00 00 45 00 00 00 00 00 45 00 45 00 45 00 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 00 00 00 45 00 00 00 00 00 45 00 00 00 00 45 45 45 45 45 45 45 45 45 45 00 00 45 00 00 00 00 45 45 45 00 00 00 00 45 45 00 45 00 45 45 00 00 45 00 00 00 00 00 00 45 45 45 45 45 45 00 00 45 45 00 45 45 45 00 45 45 00 45 00 45 45 00 00 45 00 00 45 45 45 45 45 45 00 00 00 00 45 45 00 45 45 00 00 00 45 00 45 47 45 45 00 45 45 45 00 45 45 45 45 00 45 00 00 00 45 00 45 45 00 00 00 00 00 00 45 45 45 00 45 45 45 00 45 45 45 45 45 00 45 45 45 45 00 45 00 45 45 00 00 45 45 00 45 45 45 00 00 00 45 45 00 45 00 00 00 00 45 00 45 00 00 00 45 45 45 00 00 45 00 00 00 00 00 45 45 45 00 47 45 00 00 45 00 00 45 45 45 45 45 45 45 45 45 00 00 45 00 45 45 45 45 00 45 00 00 45 00 00 45 00 00 45 45 45 45 00 00 00 45 00 45 00 00 00 00 00 00 45 45 00 00 45 00 45 45 45 45 45
*/
