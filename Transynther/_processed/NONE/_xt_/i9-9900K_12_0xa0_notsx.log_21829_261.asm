.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x259e, %rax
nop
nop
and %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, (%rax)
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x17b55, %rsi
lea addresses_normal_ht+0x899e, %rdi
nop
nop
add %rbp, %rbp
mov $21, %rcx
rep movsq
and %r9, %r9
lea addresses_WT_ht+0x10e1e, %rdi
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %rax
movq %rax, (%rdi)
nop
nop
nop
nop
nop
mfence
lea addresses_A_ht+0x1bd8a, %rbp
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, (%rbp)
nop
nop
nop
nop
dec %rax
lea addresses_normal_ht+0x11a9e, %rsi
lea addresses_WC_ht+0x1a79e, %rdi
nop
add $53863, %r10
mov $56, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $62679, %r10
lea addresses_A_ht+0xef1e, %rsi
lea addresses_UC_ht+0x7c9e, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %r9, %r9
mov $23, %rcx
rep movsb
nop
nop
nop
xor %r9, %r9
lea addresses_D_ht+0x1a2d9, %rsi
nop
nop
nop
cmp %rdi, %rdi
movw $0x6162, (%rsi)
nop
add %rbp, %rbp
lea addresses_WT_ht+0xd11e, %rdi
nop
nop
sub %r8, %r8
mov (%rdi), %r9w
and %rsi, %rsi
lea addresses_WT_ht+0x1580a, %rax
nop
xor $43515, %r9
movw $0x6162, (%rax)
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0x429e, %rdi
and %r9, %r9
mov (%rdi), %ecx
lfence
lea addresses_normal_ht+0x16d8e, %r9
nop
nop
sub $31402, %rbp
movb $0x61, (%r9)
nop
nop
nop
nop
sub %r10, %r10
lea addresses_A_ht+0x849e, %rsi
clflush (%rsi)
nop
nop
nop
cmp %r8, %r8
movb $0x61, (%rsi)
and %r9, %r9
lea addresses_normal_ht+0x1809e, %rsi
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rsi)
dec %r8
lea addresses_WC_ht+0x13d9e, %rbp
nop
nop
nop
sub $19529, %rsi
mov (%rbp), %rax
nop
nop
inc %rbp
lea addresses_A_ht+0x1c6fe, %rsi
lea addresses_A_ht+0x1d032, %rdi
clflush (%rsi)
nop
nop
add %r9, %r9
mov $103, %rcx
rep movsl
nop
inc %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_UC+0x15191, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
sub %r11, %r11
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
and $10121, %rbx

// REPMOV
lea addresses_A+0xe63e, %rsi
lea addresses_A+0x3b9e, %rdi
nop
nop
nop
nop
and $3042, %r11
mov $112, %rcx
rep movsw
nop
inc %rbx

// Store
lea addresses_WC+0x11a9e, %r14
nop
nop
nop
nop
nop
dec %rsi
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
dec %r11

// Store
lea addresses_WT+0x122e2, %r14
clflush (%r14)
nop
nop
and $62265, %rdi
movb $0x51, (%r14)
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Faulty Load
lea addresses_A+0x5c9e, %rbx
clflush (%rbx)
nop
nop
add $23182, %r11
mov (%rbx), %esi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 2, 'NT': True, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': True, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
