.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rbp
push %rbx
push %rdi
push %rsi
lea addresses_D_ht+0x781d, %rsi
clflush (%rsi)
add %rbp, %rbp
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %rbx
xor $39485, %r9
lea addresses_WC_ht+0xc57d, %rax
nop
nop
nop
nop
nop
inc %r12
movl $0x61626364, (%rax)
nop
nop
nop
cmp $22261, %rbx
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_normal+0x1c9d, %rdx
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%rdx), %ax
nop
nop
nop
nop
dec %rax

// Store
lea addresses_D+0x147eb, %r13
nop
nop
nop
nop
inc %r9
movb $0x51, (%r13)
nop
nop
nop
nop
nop
sub $13230, %r9

// REPMOV
lea addresses_WT+0x18ee5, %rsi
lea addresses_WC+0x1699d, %rdi
nop
nop
nop
and %rdx, %rdx
mov $54, %rcx
rep movsq
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_normal+0x1649d, %rdi
nop
nop
and %r12, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
xor $1373, %rsi

// Store
mov $0x4ebc27000000009d, %r11
and %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, (%r11)
dec %r13

// Store
mov $0x40f644000000009d, %r11
xor $20581, %r12
movw $0x5152, (%r11)
nop
xor $35166, %rdi

// Store
lea addresses_WC+0x70dd, %r12
cmp $53727, %rdi
movb $0x51, (%r12)
nop
add $48753, %rax

// Store
lea addresses_WT+0x1929d, %rdx
sub $38785, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rdx)
nop
nop
nop
nop
nop
and $47551, %r13

// Store
lea addresses_UC+0xa81d, %rsi
nop
cmp $63442, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
nop
cmp $39198, %r12

// Store
lea addresses_RW+0xbf43, %r9
nop
nop
xor $45160, %rsi
movb $0x51, (%r9)
nop
nop
nop
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_RW+0x1589d, %rcx
add $61084, %rdi
movb (%rcx), %r13b
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 1}}
{'32': 25}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
