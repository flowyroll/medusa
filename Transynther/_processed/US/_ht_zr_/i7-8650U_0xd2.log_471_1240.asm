.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xd44d, %rsi
lea addresses_WT_ht+0x127b9, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $46, %rcx
rep movsb
nop
nop
and $20263, %rdx
lea addresses_UC_ht+0x16b9, %r10
inc %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r10)
nop
cmp $12320, %r9
lea addresses_A_ht+0x1d521, %rsi
lea addresses_WC_ht+0x27b9, %rdi
nop
nop
inc %rbx
mov $48, %rcx
rep movsq
nop
add %rcx, %rcx
lea addresses_UC_ht+0x9b19, %r10
nop
nop
xor $49021, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r10)
nop
nop
nop
nop
nop
add $51381, %rbx
lea addresses_normal_ht+0x12d79, %r9
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r9)
nop
nop
nop
nop
cmp $44769, %r10
lea addresses_UC_ht+0xf5f9, %rsi
lea addresses_WT_ht+0x1c9b9, %rdi
clflush (%rsi)
cmp $20328, %r13
mov $13, %rcx
rep movsw
nop
xor %rdx, %rdx
lea addresses_A_ht+0x45b9, %rbx
nop
and %rdi, %rdi
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
cmp $11473, %rcx
lea addresses_WC_ht+0x33b9, %r13
nop
nop
xor %rbx, %rbx
mov (%r13), %edi
nop
nop
xor $14392, %r13
lea addresses_A_ht+0xffb9, %rcx
nop
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %r9
movq %r9, %xmm6
vmovups %ymm6, (%rcx)
nop
cmp $59394, %rdi
lea addresses_WT_ht+0x6779, %rcx
clflush (%rcx)
nop
and $25734, %r9
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
inc %rsi
lea addresses_A_ht+0xb09f, %rdi
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
add $3927, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %r8
push %rcx

// Store
lea addresses_UC+0x1e831, %r14
sub %r13, %r13
movw $0x5152, (%r14)
add %r15, %r15

// Store
lea addresses_normal+0xe79, %r8
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r8)
nop
nop
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_UC+0x163f9, %r8
nop
nop
cmp %r10, %r10
mov (%r8), %r13w
inc %rcx

// Load
lea addresses_D+0x1f79, %r8
nop
and $42012, %r14
vmovups (%r8), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
nop
sub $15650, %r11

// Load
lea addresses_A+0x56b9, %r10
xor %r11, %r11
mov (%r10), %r13w
nop
nop
nop
nop
add $54698, %r13

// Store
lea addresses_UC+0x2599, %r13
nop
nop
add %r15, %r15
movb $0x51, (%r13)
nop
and %r10, %r10

// Store
lea addresses_PSE+0x10639, %r14
nop
nop
nop
xor $36276, %r11
movw $0x5152, (%r14)
nop
nop
nop
nop
add $12682, %r8

// Load
lea addresses_A+0x6e75, %r10
clflush (%r10)
nop
cmp %r8, %r8
mov (%r10), %cx
nop
nop
nop
cmp %r11, %r11

// Faulty Load
lea addresses_US+0x1afb9, %r11
nop
dec %rcx
vmovups (%r11), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r10
lea oracles, %r14
and $0xff, %r10
shlq $12, %r10
mov (%r14,%r10,1), %r10
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'45': 468, '00': 3}
45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45
*/
