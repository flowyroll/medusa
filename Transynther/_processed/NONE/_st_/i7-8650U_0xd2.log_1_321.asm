.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x4c95, %r15
nop
nop
nop
nop
add %r9, %r9
mov (%r15), %dx
xor %rbx, %rbx
lea addresses_A_ht+0x12175, %rsi
lea addresses_WT_ht+0xd0ab, %rdi
inc %r10
mov $61, %rcx
rep movsw
nop
nop
nop
nop
dec %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_A+0x11b8d, %rbx
nop
dec %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%rbx)
nop
cmp $62650, %r10

// Store
lea addresses_PSE+0xf495, %r11
nop
nop
nop
nop
nop
add %rax, %rax
movl $0x51525354, (%r11)
add %rsi, %rsi

// Load
lea addresses_US+0x1d795, %r10
nop
sub %rax, %rax
movb (%r10), %bl
nop
nop
cmp %r10, %r10

// Store
lea addresses_normal+0x10e95, %r14
nop
nop
nop
nop
nop
dec %rsi
movb $0x51, (%r14)
nop
nop
nop
nop
nop
inc %r11

// Store
lea addresses_WC+0x4f23, %r14
nop
dec %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%r14)
nop
nop
nop
nop
add %rsi, %rsi

// Load
mov $0xa45, %rax
nop
cmp $41593, %r10
mov (%rax), %ecx
nop
and %rsi, %rsi

// Store
mov $0xc89, %rax
nop
nop
nop
nop
add %rsi, %rsi
movl $0x51525354, (%rax)
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_normal+0x1e895, %rsi
nop
add %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, (%rsi)
nop
sub $39144, %rsi

// Store
lea addresses_RW+0x1ec55, %r11
nop
nop
nop
nop
and $6890, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovups %ymm0, (%r11)
cmp $21554, %r10

// Store
lea addresses_D+0xbb4f, %r11
nop
nop
nop
and %rsi, %rsi
movl $0x51525354, (%r11)
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_D+0x59d5, %rbx
clflush (%rbx)
nop
nop
nop
nop
and $33084, %rax
movw $0x5152, (%rbx)
nop
nop
dec %rax

// Faulty Load
lea addresses_WC+0x8495, %rbx
cmp %rcx, %rcx
mov (%rbx), %esi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'54': 1}
54
*/
