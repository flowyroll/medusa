.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x15dc4, %r11
nop
nop
nop
nop
nop
inc %rax
movb $0x61, (%r11)
nop
nop
nop
dec %r12
lea addresses_A_ht+0x17820, %r11
nop
nop
sub $40413, %r12
mov (%r11), %rbx
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_normal_ht+0xa0c8, %rsi
nop
cmp %r11, %r11
vmovups (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbx
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x16ab0, %rsi
nop
cmp $15469, %r11
movl $0x61626364, (%rsi)
nop
nop
nop
nop
xor $43327, %r12
lea addresses_D_ht+0x1014, %rbx
nop
nop
nop
add $25337, %r8
movb $0x61, (%rbx)
nop
nop
cmp $49014, %r11
lea addresses_D_ht+0x18120, %r8
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r11
movq %r11, (%r8)
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x14738, %rsi
nop
nop
nop
nop
nop
dec %r12
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
and $0xffffffffffffffc0, %rsi
vmovaps %ymm7, (%rsi)
nop
nop
nop
nop
inc %rax
lea addresses_D_ht+0x1680, %rsi
lea addresses_WC_ht+0xa15e, %rdi
clflush (%rsi)
nop
nop
nop
sub %rax, %rax
mov $111, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $61714, %rcx
lea addresses_WT_ht+0x4760, %r11
nop
nop
nop
and %rbx, %rbx
movb $0x61, (%r11)
nop
nop
and %r8, %r8
lea addresses_WC_ht+0xacc0, %rbx
nop
nop
add %r8, %r8
mov (%rbx), %r12w
nop
nop
nop
nop
nop
sub $10056, %rdi
lea addresses_A_ht+0x18f22, %rsi
lea addresses_normal_ht+0x6da0, %rdi
add $22423, %r8
mov $24, %rcx
rep movsb
nop
nop
nop
dec %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x1c122, %r10
nop
xor $62257, %r9
movw $0x5152, (%r10)
nop
nop
cmp $36037, %rsi

// Store
lea addresses_D+0x2120, %r9
nop
nop
nop
nop
and $38900, %r14
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
dec %r10

// Store
lea addresses_RW+0x13920, %rsi
xor %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_WC+0x8d60, %rsi
nop
nop
nop
nop
nop
xor $8018, %rdi
movw $0x5152, (%rsi)
nop
nop
nop
nop
sub $51749, %rdi

// Store
lea addresses_RW+0x13920, %rsi
nop
nop
xor $5819, %r14
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
sub $13719, %rdi

// Faulty Load
lea addresses_RW+0x13920, %r8
nop
nop
nop
add $20569, %r14
movb (%r8), %r10b
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True}}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'51': 125}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
