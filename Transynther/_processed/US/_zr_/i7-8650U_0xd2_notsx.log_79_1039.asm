.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x12b70, %r13
nop
and $55634, %r12
movb $0x61, (%r13)
nop
and %r12, %r12
lea addresses_A_ht+0x11218, %r14
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r14), %rdi
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x4210, %rdi
nop
nop
cmp $776, %rbx
movb (%rdi), %al
nop
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x14c10, %r14
nop
nop
cmp $602, %rbx
vmovups (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r12
nop
add $47185, %rbx
lea addresses_A_ht+0x13cbe, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
sub $45959, %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%rbx)
dec %rax
lea addresses_A_ht+0x19e10, %rsi
lea addresses_UC_ht+0x4f10, %rdi
nop
nop
nop
nop
xor $35371, %rbx
mov $47, %rcx
rep movsl
and $22641, %r13
lea addresses_WT_ht+0x4610, %rax
add %rsi, %rsi
movl $0x61626364, (%rax)
nop
nop
nop
nop
and %r12, %r12
lea addresses_normal_ht+0xdcd0, %r13
nop
nop
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
and $0xffffffffffffffc0, %r13
movntdq %xmm2, (%r13)
nop
nop
nop
nop
nop
and $26626, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %rax
push %rbx
push %rcx
push %rdx

// Faulty Load
lea addresses_US+0xce10, %rax
nop
nop
add $5765, %rcx
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r10
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'00': 79}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
