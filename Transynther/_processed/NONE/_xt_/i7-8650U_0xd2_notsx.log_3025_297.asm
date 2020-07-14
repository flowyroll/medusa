.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xca10, %r13
nop
nop
nop
nop
inc %r15
mov $0x6162636465666768, %r11
movq %r11, %xmm6
vmovups %ymm6, (%r13)
nop
cmp $20567, %rcx
lea addresses_A_ht+0x19096, %r13
nop
nop
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %rbx
movq %rbx, (%r13)
dec %r15
lea addresses_UC_ht+0x19e88, %r11
clflush (%r11)
nop
nop
and %r14, %r14
movw $0x6162, (%r11)
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x9450, %r13
nop
nop
add $38518, %r14
movups (%r13), %xmm5
vpextrq $1, %xmm5, %r11
and $4878, %rax
lea addresses_normal_ht+0x3b50, %r15
sub $60515, %r13
mov $0x6162636465666768, %rbx
movq %rbx, (%r15)
nop
nop
xor $41843, %r14
lea addresses_UC_ht+0x1cb50, %r11
nop
nop
nop
nop
and %r13, %r13
movups (%r11), %xmm4
vpextrq $1, %xmm4, %rax
nop
and %r14, %r14
lea addresses_WT_ht+0x7e50, %rax
nop
and %r13, %r13
mov (%rax), %r15w
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0x12fd0, %rax
clflush (%rax)
and %r14, %r14
mov $0x6162636465666768, %r11
movq %r11, (%rax)
nop
nop
nop
nop
dec %rbx
lea addresses_UC_ht+0x17d50, %r11
nop
nop
nop
nop
inc %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
nop
nop
sub $45885, %r14
lea addresses_D_ht+0x149d0, %rcx
nop
nop
add $60457, %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%rcx)
and $55820, %r13
lea addresses_UC_ht+0x147ef, %rsi
lea addresses_UC_ht+0xc650, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp %rbx, %rbx
mov $114, %rcx
rep movsq
nop
nop
add $13869, %rdi
lea addresses_WC_ht+0x1a50, %r11
add %rax, %rax
movb $0x61, (%r11)
nop
nop
nop
add $45431, %r13
lea addresses_UC_ht+0x13ea8, %r13
nop
nop
nop
nop
nop
and %rcx, %rcx
and $0xffffffffffffffc0, %r13
movntdqa (%r13), %xmm6
vpextrq $0, %xmm6, %rbx
nop
nop
cmp $32696, %rax
lea addresses_WC_ht+0x8550, %r15
nop
nop
nop
xor $9189, %rsi
movb (%r15), %r13b
nop
nop
nop
nop
sub $180, %rcx
lea addresses_UC_ht+0x8627, %r13
clflush (%r13)
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%r13)
nop
nop
nop
xor $24581, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
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

// REPMOV
lea addresses_UC+0x1f350, %rsi
lea addresses_D+0x8850, %rdi
nop
nop
nop
and $38140, %r13
mov $96, %rcx
rep movsl
nop
nop
cmp $50651, %rdx

// Store
lea addresses_WT+0x14d50, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %r9, %r9
movb $0x51, (%rdi)
nop
nop
nop
inc %rdx

// Faulty Load
lea addresses_UC+0x1f350, %r9
nop
nop
nop
nop
add %rdx, %rdx
movups (%r9), %xmm6
vpextrq $0, %xmm6, %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
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
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'37': 3025}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
