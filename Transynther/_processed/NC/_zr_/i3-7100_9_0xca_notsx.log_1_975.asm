.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1be4b, %rsi
lea addresses_D_ht+0x1571f, %rdi
nop
sub $58256, %r10
mov $47, %rcx
rep movsb
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x14b95, %r11
clflush (%r11)
nop
nop
sub $9928, %r14
movl $0x61626364, (%r11)
nop
nop
and %r14, %r14
lea addresses_A_ht+0x18b4b, %r14
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r14)
nop
nop
nop
nop
nop
add $36420, %r13
lea addresses_normal_ht+0x884b, %r10
nop
nop
nop
nop
nop
cmp $41930, %rdi
vmovups (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
sub $52302, %rcx
lea addresses_D_ht+0x1c54b, %rsi
lea addresses_WT_ht+0x108d2, %rdi
dec %r12
mov $51, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $3895, %r10
lea addresses_normal_ht+0x1054b, %rsi
lea addresses_WC_ht+0x11feb, %rdi
xor $59054, %r12
mov $118, %rcx
rep movsl
nop
nop
inc %rcx
lea addresses_A_ht+0x1b4b, %rsi
lea addresses_WT_ht+0x3d4b, %rdi
nop
cmp $56944, %r11
mov $74, %rcx
rep movsw
nop
nop
nop
cmp $57055, %r11
lea addresses_WT_ht+0x1694b, %r10
clflush (%r10)
nop
nop
nop
nop
nop
xor $45778, %rcx
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
sub $50992, %r12
lea addresses_normal_ht+0x1676b, %r14
nop
nop
xor %r13, %r13
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
sub $61037, %r14
lea addresses_A_ht+0x8a53, %rcx
sub %r12, %r12
movb (%rcx), %r11b
inc %rcx
lea addresses_WC_ht+0x6f4b, %r11
cmp %rsi, %rsi
mov $0x6162636465666768, %r12
movq %r12, (%r11)
sub $27491, %rdi
lea addresses_normal_ht+0x934b, %r13
and %rsi, %rsi
vmovups (%r13), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r14
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0xe94b, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0x838b, %rsi
lea addresses_UC_ht+0x6f4b, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov $81, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r12
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi

// Store
mov $0x143138000000064b, %rcx
mfence
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
sub %rdi, %rdi

// Store
lea addresses_US+0xf52b, %r13
nop
nop
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovaps %ymm5, (%r13)
nop
nop
dec %rax

// Load
mov $0x73b6eb000000003f, %r11
clflush (%r11)
sub %rcx, %rcx
mov (%r11), %edi
nop
nop
nop
sub $26230, %r10

// Store
lea addresses_WC+0x634b, %r11
xor $55455, %r13
movw $0x5152, (%r11)
xor %r10, %r10

// Faulty Load
mov $0x2626140000000d4b, %r13
clflush (%r13)
and $57409, %r11
mov (%r13), %edi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'00': 1}
00
*/
