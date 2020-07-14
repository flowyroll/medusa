.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x15ba0, %r11
nop
nop
nop
dec %r12
mov (%r11), %rax
nop
nop
nop
nop
inc %r11
lea addresses_normal_ht+0xed16, %rax
nop
nop
nop
nop
sub %r11, %r11
movups (%rax), %xmm3
vpextrq $1, %xmm3, %r13
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_WC_ht+0x109e, %r10
nop
nop
nop
nop
xor $46716, %r13
movw $0x6162, (%r10)
nop
nop
dec %rax
lea addresses_D_ht+0x1379e, %r11
nop
nop
nop
nop
nop
and $12631, %r13
movb $0x61, (%r11)
nop
nop
sub %r12, %r12
lea addresses_D_ht+0xf9e, %rsi
lea addresses_normal_ht+0x1839e, %rdi
nop
mfence
mov $11, %rcx
rep movsq
sub %r8, %r8
lea addresses_normal_ht+0x5486, %rsi
lea addresses_normal_ht+0x1379e, %rdi
nop
nop
inc %r13
mov $63, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0x1a19e, %rdi
nop
nop
nop
nop
and $47285, %rsi
movb $0x61, (%rdi)
nop
nop
nop
nop
and %r8, %r8
lea addresses_D_ht+0x1dfaa, %rsi
lea addresses_D_ht+0x1d59e, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $10884, %r11
mov $112, %rcx
rep movsb
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x9dbe, %rsi
lea addresses_normal_ht+0x11d46, %rdi
nop
nop
add $19427, %rax
mov $56, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $6742, %rdi
lea addresses_normal_ht+0x4f9e, %r11
nop
nop
nop
nop
nop
cmp $33253, %r8
mov (%r11), %r12w
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0xc99e, %r11
clflush (%r11)
nop
nop
nop
and %rax, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
and $0xffffffffffffffc0, %r11
vmovaps %ymm2, (%r11)
nop
nop
nop
nop
nop
add $14969, %rcx
lea addresses_WT_ht+0x9b9e, %rsi
lea addresses_WT_ht+0x1b9e, %rdi
and %r13, %r13
mov $78, %rcx
rep movsl
nop
nop
nop
sub $47913, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0xa6fe, %r9
nop
nop
nop
xor $17948, %r14
movb $0x51, (%r9)
nop
cmp $28719, %r14

// Load
lea addresses_normal+0x1c41e, %rdi
nop
nop
nop
nop
and %rdx, %rdx
mov (%rdi), %cx
nop
nop
nop
nop
inc %rdx

// Store
lea addresses_UC+0xf12c, %rsi
nop
sub $9465, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rsi)
nop
dec %r14

// Store
lea addresses_WC+0x1e29e, %rsi
nop
nop
dec %rcx
movl $0x51525354, (%rsi)
nop
nop
nop
xor %r9, %r9

// Load
lea addresses_UC+0xac26, %r9
nop
sub $34319, %r13
vmovups (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
dec %r9

// Store
lea addresses_normal+0x19d9e, %r9
nop
nop
add %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovntdq %ymm2, (%r9)
nop
nop
nop
add $26443, %rdi

// Store
lea addresses_normal+0x1e73e, %rdi
nop
nop
nop
nop
and %rsi, %rsi
movb $0x51, (%rdi)
nop
nop
nop
nop
and %rdi, %rdi

// Load
lea addresses_UC+0xeb4b, %rdx
clflush (%rdx)
nop
nop
nop
nop
xor $7210, %r13
vmovups (%rdx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
dec %rdx

// Faulty Load
lea addresses_normal+0x16f9e, %rdx
nop
nop
add %r14, %r14
mov (%rdx), %esi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'34': 7}
34 34 34 34 34 34 34
*/
