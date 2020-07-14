.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1e651, %rdx
xor $18472, %r14
mov (%rdx), %r10w
nop
nop
and $38268, %rsi
lea addresses_A_ht+0xda51, %rsi
lea addresses_WT_ht+0x4d11, %rdi
nop
nop
nop
sub %r13, %r13
mov $119, %rcx
rep movsq
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x1cc68, %r13
nop
nop
nop
nop
and $18355, %r14
mov (%r13), %r10
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0x5651, %r13
nop
nop
nop
nop
nop
and $23620, %rcx
vmovups (%r13), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
xor %r14, %r14
lea addresses_UC_ht+0xaa51, %rsi
lea addresses_D_ht+0x73ad, %rdi
nop
sub $29415, %r14
mov $2, %rcx
rep movsw
nop
and %rdi, %rdi
lea addresses_WT_ht+0x1de51, %rdx
nop
nop
nop
nop
cmp $54511, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%rdx)
nop
nop
nop
nop
and $4247, %rdx
lea addresses_UC_ht+0x1c561, %r10
clflush (%r10)
nop
nop
nop
nop
nop
sub $55574, %rdx
mov (%r10), %esi
nop
nop
nop
nop
xor $56448, %rcx
lea addresses_normal_ht+0x1131, %rcx
clflush (%rcx)
and %rdx, %rdx
movw $0x6162, (%rcx)
nop
nop
add $45319, %rcx
lea addresses_WC_ht+0xcd1, %rsi
lea addresses_WC_ht+0x60d1, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r13
mov $61, %rcx
rep movsw
xor $10014, %r10
lea addresses_WT_ht+0x1ee51, %rsi
lea addresses_A_ht+0x7c4d, %rdi
clflush (%rdi)
dec %r15
mov $72, %rcx
rep movsw
nop
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x2e91, %rsi
lea addresses_D_ht+0xcfd1, %rdi
nop
add %r14, %r14
mov $65, %rcx
rep movsw
nop
nop
nop
nop
add $43932, %r14
lea addresses_WT_ht+0xc001, %rsi
sub $21365, %r14
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
xor $63495, %rsi
lea addresses_WT_ht+0x1eb91, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm7, (%rdi)
and $48111, %r14
lea addresses_UC_ht+0x195d1, %rsi
lea addresses_D_ht+0xea5a, %rdi
nop
xor $26514, %rdx
mov $101, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0x1ea51, %r14
sub %r15, %r15
movl $0x61626364, (%r14)
nop
nop
nop
xor $744, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rbx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x4771, %rbx
sub %rsi, %rsi
movb $0x51, (%rbx)
nop
nop
nop
nop
cmp $27586, %r10

// Store
lea addresses_A+0xb9d1, %rdx
nop
inc %r11
mov $0x5152535455565758, %r10
movq %r10, (%rdx)
nop
nop
and $11408, %rbx

// Load
lea addresses_normal+0x86d1, %r9
nop
nop
nop
nop
sub $22491, %r15
vmovups (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
nop
add %r11, %r11

// Store
lea addresses_D+0x251, %rsi
nop
nop
nop
nop
nop
sub $21044, %r15
movl $0x51525354, (%rsi)
nop
nop
sub %rbx, %rbx

// Faulty Load
lea addresses_D+0xbe51, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %rbx
mov (%rsi), %r9d
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
