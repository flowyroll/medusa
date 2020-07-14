.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x2c73, %r12
nop
nop
nop
nop
nop
and %r13, %r13
movb $0x61, (%r12)
nop
nop
nop
xor $16944, %r15
lea addresses_normal_ht+0x109ab, %rdx
nop
nop
add %rsi, %rsi
movb $0x61, (%rdx)
nop
nop
nop
add $36857, %r12
lea addresses_UC_ht+0x1b77, %rcx
nop
and %r8, %r8
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
nop
xor $45001, %r15
lea addresses_D_ht+0x4f8b, %r15
nop
nop
cmp $6328, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm5
movups %xmm5, (%r15)
nop
nop
nop
nop
nop
and $60838, %r12
lea addresses_normal_ht+0x1974b, %r8
clflush (%r8)
nop
nop
nop
nop
sub %rsi, %rsi
mov (%r8), %r15d
dec %r15
lea addresses_WC_ht+0x3eeb, %rsi
nop
nop
xor %r8, %r8
mov (%rsi), %r13
nop
and %r13, %r13
lea addresses_WC_ht+0x172cb, %rsi
lea addresses_normal_ht+0xe143, %rdi
nop
dec %rdx
mov $9, %rcx
rep movsw
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x166c3, %rsi
lea addresses_UC_ht+0x117e7, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
and %r13, %r13
mov $118, %rcx
rep movsq
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0x1870b, %r13
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r13)
xor %rdx, %rdx
lea addresses_normal_ht+0x1660b, %rsi
lea addresses_WC_ht+0x1e70b, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $35, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_WT_ht+0x8e0b, %r12
nop
nop
nop
nop
nop
add %rdi, %rdi
movb $0x61, (%r12)
nop
nop
nop
nop
nop
sub $57433, %r13
lea addresses_UC_ht+0x14d3b, %r13
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r13)
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x1470b, %rdx
clflush (%rdx)
nop
nop
nop
nop
cmp %r8, %r8
movw $0x6162, (%rdx)
nop
and %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rcx
push %rsi

// Load
lea addresses_RW+0x1e6c3, %r13
xor $47957, %r11
movb (%r13), %cl
add $51096, %r10

// Store
lea addresses_D+0x213, %r12
nop
nop
nop
nop
nop
and $42126, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%r12)
sub $19994, %r10

// Store
lea addresses_normal+0x17081, %r15
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r15)
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_normal+0xab4d, %r13
add $50372, %rsi
movw $0x5152, (%r13)
nop
nop
nop
nop
add %r10, %r10

// Load
lea addresses_WC+0x3eab, %r10
nop
nop
nop
nop
nop
xor $50434, %r15
mov (%r10), %r12w
add %r12, %r12

// Store
mov $0xb, %r10
nop
nop
nop
nop
and $28232, %r15
movw $0x5152, (%r10)
nop
and $11027, %rcx

// Store
lea addresses_PSE+0x19c0b, %r11
nop
xor %r13, %r13
mov $0x5152535455565758, %r12
movq %r12, (%r11)
nop
nop
and $32230, %r13

// Load
lea addresses_RW+0xfc0b, %r12
sub %r13, %r13
mov (%r12), %r15w
nop
nop
nop
nop
add %r10, %r10

// Load
lea addresses_normal+0x580b, %r11
nop
nop
nop
sub $18844, %rsi
mov (%r11), %r13d
nop
nop
nop
nop
sub $53210, %rcx

// Faulty Load
lea addresses_WT+0x200b, %rcx
nop
sub $33081, %r13
mov (%rcx), %r15w
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': True, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': True, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'52': 4867}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
