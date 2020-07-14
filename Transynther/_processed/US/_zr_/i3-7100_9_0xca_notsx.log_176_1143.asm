.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x14fa0, %r12
nop
nop
nop
nop
xor $31333, %r15
mov $0x6162636465666768, %r8
movq %r8, %xmm2
vmovups %ymm2, (%r12)
nop
cmp %r15, %r15
lea addresses_WC_ht+0xadb0, %rsi
lea addresses_UC_ht+0x69b0, %rdi
nop
nop
nop
add %r15, %r15
mov $40, %rcx
rep movsw
add $14519, %r12
lea addresses_WC_ht+0xa0b0, %r12
nop
nop
nop
and $49068, %r10
movb $0x61, (%r12)
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0x9270, %rsi
nop
nop
nop
nop
inc %r10
mov (%rsi), %r12w
nop
nop
nop
nop
nop
xor $58788, %r10
lea addresses_normal_ht+0xddb0, %rsi
lea addresses_normal_ht+0x15db0, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $81, %rcx
rep movsq
nop
nop
sub $52304, %rsi
lea addresses_normal_ht+0xa5b0, %rcx
sub $22371, %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
inc %rcx
lea addresses_D_ht+0xbb20, %rsi
lea addresses_normal_ht+0x1a3f0, %rdi
nop
nop
nop
sub $27758, %r8
mov $54, %rcx
rep movsw
nop
nop
nop
nop
dec %r12
lea addresses_normal_ht+0x18508, %r15
nop
nop
nop
mfence
movb $0x61, (%r15)
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x145b0, %rdi
nop
nop
cmp $36049, %r10
mov (%rdi), %r12d
nop
and $18286, %r12
lea addresses_WT_ht+0xdb0, %rsi
nop
nop
nop
nop
mfence
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%rsi)
nop
add %rcx, %rcx
lea addresses_WT_ht+0x7f80, %rcx
clflush (%rcx)
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x17c40, %r8
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movw $0x6162, (%r8)
nop
nop
sub %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rbx
push %rsi

// Store
lea addresses_WT+0x11b0, %r15
nop
nop
nop
nop
sub $61455, %rsi
mov $0x5152535455565758, %r14
movq %r14, (%r15)
lfence

// Store
lea addresses_WT+0x130c4, %r11
nop
nop
inc %rbx
movw $0x5152, (%r11)
nop
dec %rsi

// Load
lea addresses_D+0x71fa, %r14
nop
nop
nop
nop
cmp $51653, %rsi
movb (%r14), %bl
sub $46513, %r15

// Store
lea addresses_D+0x5700, %r15
nop
nop
add %r10, %r10
movb $0x51, (%r15)
nop
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_WT+0x10c70, %r10
nop
nop
nop
xor $33671, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovntdq %ymm1, (%r10)
nop
nop
nop
nop
nop
and $25745, %rbx

// Store
lea addresses_D+0x1bf30, %rsi
cmp $30342, %r11
movl $0x51525354, (%rsi)
nop
nop
nop
and %rbx, %rbx

// Load
lea addresses_US+0x115b0, %r10
nop
nop
nop
nop
nop
inc %rbx
movups (%r10), %xmm5
vpextrq $1, %xmm5, %r13
nop
nop
nop
nop
cmp $34095, %rsi

// Load
lea addresses_normal+0x5d50, %r10
sub %r13, %r13
mov (%r10), %r15
nop
dec %rsi

// Faulty Load
lea addresses_US+0x115b0, %rsi
nop
nop
cmp %r11, %r11
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rsi
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True}}
{'00': 176}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
