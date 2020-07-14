.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xbcc3, %rdx
nop
nop
add %r10, %r10
movups (%rdx), %xmm2
vpextrq $1, %xmm2, %r14
nop
nop
nop
nop
nop
dec %r14
lea addresses_WC_ht+0xc57c, %r13
sub $50484, %rdx
mov (%r13), %r11d
nop
nop
and %r10, %r10
lea addresses_D_ht+0x15aac, %rsi
lea addresses_D_ht+0x322f, %rdi
xor $20461, %r10
mov $20, %rcx
rep movsl
xor $63363, %r14
lea addresses_WT_ht+0x1997c, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
cmp $13534, %rcx
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
cmp %rdi, %rdi
lea addresses_UC_ht+0xe68c, %rdi
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
sub $19377, %rdi
lea addresses_UC_ht+0x1b51c, %r14
nop
nop
cmp $21954, %r13
vmovups (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r10
nop
nop
add $23591, %rdi
lea addresses_UC_ht+0x1e5c2, %r10
sub %r14, %r14
movb (%r10), %cl
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x15afc, %rsi
lea addresses_UC_ht+0x54ea, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r14
mov $40, %rcx
rep movsl
nop
nop
and %r11, %r11
lea addresses_D_ht+0x1db3c, %rsi
lea addresses_WT_ht+0x1837c, %rdi
nop
nop
nop
nop
and $20005, %rdx
mov $59, %rcx
rep movsb
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x1847c, %rsi
lea addresses_WC_ht+0x168bc, %rdi
nop
nop
nop
add %r11, %r11
mov $67, %rcx
rep movsb
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
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rsi

// Load
lea addresses_A+0x1dc62, %rbx
nop
cmp %r11, %r11
mov (%rbx), %r9d
nop
nop
nop
nop
nop
and %r15, %r15

// Store
mov $0x1e165e000000003c, %r13
xor %r10, %r10
movw $0x5152, (%r13)
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_D+0x1fe3c, %rbx
nop
inc %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movaps %xmm3, (%rbx)
nop
cmp $20086, %r10

// Store
lea addresses_D+0x12d7c, %r13
cmp %r11, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movntdq %xmm5, (%r13)
nop
nop
nop
nop
cmp $1100, %r9

// Faulty Load
mov $0x2fa4b30000000d7c, %r13
inc %r15
movb (%r13), %r11b
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rsi
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'58': 390, '30': 4, '00': 11}
58 58 58 58 58 58 58 58 58 58 58 58 30 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 30 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 30 58 58 58 58 58 58 58 58 58 58 58 30 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
