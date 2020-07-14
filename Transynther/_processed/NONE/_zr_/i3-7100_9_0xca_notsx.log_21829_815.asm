.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x6c94, %r11
nop
nop
nop
nop
dec %rbx
movw $0x6162, (%r11)
nop
nop
nop
nop
nop
and $64764, %r11
lea addresses_normal_ht+0x2c94, %rsi
lea addresses_UC_ht+0x11b4, %rdi
nop
add %r11, %r11
mov $73, %rcx
rep movsl
nop
dec %rcx
lea addresses_WT_ht+0x15248, %r11
nop
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %rbx
movq %rbx, (%r11)
nop
xor %rdi, %rdi
lea addresses_A_ht+0x8494, %rsi
lea addresses_D_ht+0x17614, %rdi
nop
nop
nop
mfence
mov $92, %rcx
rep movsq
nop
add $21166, %rbx
lea addresses_WC_ht+0x126c4, %rsi
nop
sub $32760, %r11
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %r8
nop
nop
dec %rax
lea addresses_D_ht+0x93e4, %rsi
lea addresses_A_ht+0x14c94, %rdi
nop
nop
nop
nop
nop
xor $24298, %r11
mov $40, %rcx
rep movsb
nop
nop
nop
sub $13442, %rdi
lea addresses_D_ht+0x19494, %rbx
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rbx)
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x494, %rbx
nop
cmp %rdi, %rdi
movw $0x6162, (%rbx)
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0xf934, %r8
nop
xor $30787, %rax
movups (%r8), %xmm7
vpextrq $1, %xmm7, %r15
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x5c94, %rsi
lea addresses_A_ht+0x10f94, %rdi
nop
nop
inc %r15
mov $18, %rcx
rep movsb
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x1ac94, %rsi
lea addresses_WT_ht+0x3884, %rdi
clflush (%rsi)
nop
nop
nop
xor %rbx, %rbx
mov $12, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x9854, %rax
cmp %rsi, %rsi
mov (%rax), %bx
nop
nop
nop
nop
nop
xor $60719, %r8
lea addresses_WT_ht+0x143d4, %r11
sub %rbx, %rbx
movups (%r11), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rax
push %rbp
push %rbx
push %rdi

// Store
lea addresses_UC+0x18080, %rbp
nop
nop
nop
sub %r10, %r10
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_normal+0xc9d4, %r12
nop
nop
xor %rdi, %rdi
movw $0x5152, (%r12)
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_D+0x8494, %r8
nop
add %rax, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%r8)
nop
nop
nop
xor $18137, %rbx

// Faulty Load
lea addresses_D+0x8494, %rbx
nop
nop
nop
dec %r10
movups (%rbx), %xmm3
vpextrq $1, %xmm3, %rdi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
