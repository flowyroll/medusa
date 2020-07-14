.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x16d12, %rsi
lea addresses_normal_ht+0x6f6e, %rdi
nop
nop
nop
dec %r13
mov $9, %rcx
rep movsb
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x12c06, %r10
nop
nop
nop
cmp $57564, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x6c42, %rbx
nop
nop
nop
nop
sub %r15, %r15
movl $0x61626364, (%rbx)
nop
nop
xor $25433, %r15
lea addresses_normal_ht+0x9cb6, %r10
nop
nop
nop
nop
cmp %rdi, %rdi
movb $0x61, (%r10)
sub %r15, %r15
lea addresses_normal_ht+0x19d4e, %rsi
lea addresses_UC_ht+0x1d326, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $66, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r13
lea addresses_D_ht+0x13e96, %rbx
nop
nop
nop
nop
nop
and $11554, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm2
and $0xffffffffffffffc0, %rbx
vmovaps %ymm2, (%rbx)
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x24cc, %r13
add $57639, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm1
and $0xffffffffffffffc0, %r13
vmovntdq %ymm1, (%r13)
nop
dec %r13
lea addresses_D_ht+0x11ff6, %r13
add %r10, %r10
movb (%r13), %cl
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x92b6, %rbx
nop
nop
nop
nop
nop
cmp $2355, %rcx
mov (%rbx), %r13
nop
nop
dec %rsi
lea addresses_WT_ht+0xac36, %r10
clflush (%r10)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
nop
nop
nop
dec %r10
lea addresses_D_ht+0x1705c, %rdi
nop
nop
nop
nop
xor %r13, %r13
movb (%rdi), %r10b
nop
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x8ae9, %r13
and $5124, %rbx
vmovups (%r13), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
nop
nop
nop
and $15984, %rsi
lea addresses_UC_ht+0x15fb6, %rsi
lea addresses_WT_ht+0x1c293, %rdi
nop
inc %rbp
mov $102, %rcx
rep movsb
nop
xor $31321, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rbx
push %rcx
push %rdx
push %rsi

// Faulty Load
mov $0x45f3b90000000cb6, %rbx
nop
and $15350, %r8
vmovups (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'00': 170}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
