.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xfe9a, %rcx
nop
nop
nop
nop
xor %rdx, %rdx
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x272a, %r13
nop
xor $51465, %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0x3eea, %rsi
nop
cmp $5626, %r13
movl $0x61626364, (%rsi)
nop
nop
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0x77a1, %r15
nop
nop
nop
xor $61850, %rcx
movb $0x61, (%r15)
nop
nop
nop
nop
xor $51784, %r13
lea addresses_A_ht+0x14daa, %rcx
cmp %r12, %r12
mov (%rcx), %r13d
nop
nop
cmp $50643, %r9
lea addresses_WT_ht+0xf71a, %r12
nop
and %r9, %r9
mov (%r12), %ecx
sub $18720, %r9
lea addresses_A_ht+0x4f4e, %rsi
lea addresses_WC_ht+0x174aa, %rdi
dec %r12
mov $86, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x16f2a, %rsi
lea addresses_WT_ht+0x1732, %rdi
nop
nop
nop
and $6442, %r12
mov $75, %rcx
rep movsb
nop
nop
nop
nop
inc %r9
lea addresses_UC_ht+0x5faa, %r12
nop
nop
nop
nop
nop
and $6223, %r15
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
and $0xffffffffffffffc0, %r12
movaps %xmm3, (%r12)
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x41fa, %rsi
lea addresses_WT_ht+0x1afaa, %rdi
nop
nop
nop
and %rdx, %rdx
mov $51, %rcx
rep movsb
add %rcx, %rcx
lea addresses_UC_ht+0x1daca, %r9
nop
nop
nop
nop
dec %rcx
mov (%r9), %edx
nop
nop
cmp $26854, %rsi
lea addresses_UC_ht+0x1b7aa, %rdx
nop
and $17225, %r9
vmovups (%rdx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
nop
nop
nop
nop
nop
sub $50005, %r9
lea addresses_WC_ht+0xaaa, %rsi
lea addresses_UC_ht+0x1caaa, %rdi
clflush (%rsi)
nop
nop
nop
and $40378, %r12
mov $122, %rcx
rep movsb
xor $26600, %rdi
lea addresses_D_ht+0x581a, %rsi
lea addresses_A_ht+0x1e8aa, %rdi
nop
and %rdx, %rdx
mov $54, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $23429, %rsi
lea addresses_normal_ht+0x175ea, %rsi
lea addresses_D_ht+0x151aa, %rdi
nop
nop
dec %rdx
mov $89, %rcx
rep movsw
nop
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x1406a, %rcx
clflush (%rcx)
nop
add $19497, %r8
movb $0x51, (%rcx)
sub %rcx, %rcx

// Store
lea addresses_A+0x18aa, %r13
sub $6518, %r11
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// REPMOV
lea addresses_WC+0x8efa, %rsi
lea addresses_normal+0x18a3c, %rdi
nop
sub %r13, %r13
mov $42, %rcx
rep movsl
nop
nop
sub %rcx, %rcx

// Store
lea addresses_WC+0xea06, %r13
xor $23439, %rax
movl $0x51525354, (%r13)
and %r9, %r9

// REPMOV
lea addresses_D+0x13a5f, %rsi
lea addresses_PSE+0xc7aa, %rdi
nop
nop
nop
nop
nop
cmp $43282, %r9
mov $92, %rcx
rep movsw
nop
nop
nop
sub $60848, %r9

// Store
lea addresses_WC+0x18cfb, %r13
nop
nop
nop
nop
add %r9, %r9
movl $0x51525354, (%r13)
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_UC+0x18daa, %rsi
nop
nop
nop
nop
xor $4873, %rcx
mov $0x5152535455565758, %r11
movq %r11, (%rsi)
nop
nop
nop
nop
nop
add %r9, %r9

// Store
lea addresses_WT+0x194aa, %r11
nop
nop
and $40509, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%r11)
nop
nop
nop
nop
nop
cmp %r10, %r10

// Faulty Load
lea addresses_PSE+0xbfaa, %rcx
sub %r10, %r10
movb (%rcx), %al
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WC', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_D', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
