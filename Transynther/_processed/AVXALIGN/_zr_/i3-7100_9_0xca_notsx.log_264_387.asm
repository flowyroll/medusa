.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x6b86, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
dec %r10
lea addresses_UC_ht+0xd3d6, %r15
nop
nop
nop
nop
nop
dec %r11
movups (%r15), %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
nop
and $4349, %r11
lea addresses_WC_ht+0x16bc6, %rsi
lea addresses_WT_ht+0x7986, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $72, %rcx
rep movsb
and %r10, %r10
lea addresses_D_ht+0xb786, %r15
add $27691, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r15)
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0x15386, %r12
nop
nop
nop
nop
nop
cmp $65425, %rdi
movb (%r12), %cl
nop
nop
nop
nop
and %r10, %r10
lea addresses_D_ht+0xf66, %r12
nop
nop
nop
nop
sub %r11, %r11
mov (%r12), %r10
add %rdi, %rdi
lea addresses_WC_ht+0x8c8e, %rsi
lea addresses_A_ht+0x8e46, %rdi
clflush (%rdi)
nop
nop
sub %r11, %r11
mov $64, %rcx
rep movsb
nop
nop
nop
and %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0xa879, %rsi
nop
nop
nop
and $26506, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovaps %ymm4, (%rsi)
cmp $65087, %r14

// Store
lea addresses_A+0x137f6, %rcx
nop
nop
cmp $18157, %rdx
movw $0x5152, (%rcx)
nop
nop
nop
xor %rdx, %rdx

// Faulty Load
mov $0x3131150000000f86, %rsi
nop
inc %r12
movaps (%rsi), %xmm6
vpextrq $0, %xmm6, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'00': 264}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
