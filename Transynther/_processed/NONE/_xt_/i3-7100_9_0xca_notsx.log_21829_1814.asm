.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x19e7a, %rsi
nop
nop
nop
and %r11, %r11
movl $0x61626364, (%rsi)
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x110ba, %rsi
lea addresses_WC_ht+0x42ea, %rdi
nop
nop
and %rbp, %rbp
mov $120, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $50638, %rdi
lea addresses_D_ht+0x172ea, %rsi
lea addresses_WC_ht+0x8dea, %rdi
nop
sub %r11, %r11
mov $14, %rcx
rep movsl
nop
nop
xor $19584, %rdi
lea addresses_UC_ht+0x50aa, %rbp
nop
cmp $31144, %rbx
vmovups (%rbp), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
and $4050, %rsi
lea addresses_normal_ht+0x11e2a, %rsi
lea addresses_UC_ht+0x58aa, %rdi
clflush (%rsi)
nop
nop
nop
xor $14446, %r10
mov $104, %rcx
rep movsl
nop
nop
nop
cmp $47586, %rbx
lea addresses_A_ht+0x1bf54, %rsi
nop
xor %rcx, %rcx
movb (%rsi), %r10b
sub $1561, %rsi
lea addresses_A_ht+0x194ea, %r11
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r11)
nop
nop
inc %rsi
lea addresses_WT_ht+0x82ea, %r11
nop
inc %rbp
mov (%r11), %r10w
nop
xor %r11, %r11
lea addresses_normal_ht+0xe80a, %r11
nop
xor $42014, %rax
mov (%r11), %esi
nop
add $20617, %rcx
lea addresses_WT_ht+0xfd2a, %rax
nop
nop
nop
nop
dec %r10
mov $0x6162636465666768, %rbp
movq %rbp, (%rax)
add $53930, %rdi
lea addresses_UC_ht+0x17aea, %rsi
lea addresses_normal_ht+0x8aea, %rdi
nop
and $21491, %rax
mov $28, %rcx
rep movsw
nop
nop
dec %rdi
lea addresses_WC_ht+0x1ee4a, %r10
nop
sub $9548, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm1
vmovups %ymm1, (%r10)
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x152e2, %r11
nop
nop
nop
nop
sub $35933, %rbx
movl $0x61626364, (%r11)
inc %rax
lea addresses_A_ht+0x1d2ca, %rsi
lea addresses_WT_ht+0x32d2, %rdi
nop
nop
add %rbx, %rbx
mov $113, %rcx
rep movsl
and %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x17186, %rsi
lea addresses_PSE+0xa83a, %rdi
nop
and $52785, %r15
mov $83, %rcx
rep movsw
nop
nop
nop
nop
nop
add $56808, %rcx

// Load
lea addresses_WC+0x124a, %r11
nop
nop
nop
nop
nop
and %r8, %r8
mov (%r11), %r9w
inc %r9

// Store
mov $0xeae, %r9
nop
and %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movups %xmm7, (%r9)
xor $10698, %rcx

// Store
lea addresses_RW+0x141a4, %r11
nop
nop
nop
nop
nop
cmp $32996, %r8
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_A+0x9eea, %r8
nop
and $26435, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movups %xmm3, (%r8)
nop
nop
inc %r8

// Store
lea addresses_normal+0xb802, %rsi
nop
xor %r15, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
nop
cmp $16118, %r15

// Load
lea addresses_WT+0x15eea, %r15
nop
nop
nop
nop
nop
xor %r8, %r8
mov (%r15), %cx
nop
cmp $6154, %rdi

// Store
lea addresses_PSE+0x42ea, %rcx
nop
nop
nop
nop
nop
xor $7721, %rdi
movl $0x51525354, (%rcx)
nop
sub $3259, %rsi

// Store
lea addresses_RW+0x1beea, %r8
cmp %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r8)
nop
cmp %rdi, %rdi

// Store
lea addresses_UC+0x91ea, %rsi
nop
nop
nop
nop
cmp $3195, %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
cmp $9834, %rcx

// Store
mov $0xb82, %rcx
nop
nop
dec %r15
movb $0x51, (%rcx)
add $27435, %r15

// Faulty Load
lea addresses_PSE+0x1c2ea, %rsi
nop
nop
inc %r11
mov (%rsi), %r15w
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
