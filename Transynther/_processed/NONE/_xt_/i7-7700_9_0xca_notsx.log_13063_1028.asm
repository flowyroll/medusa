.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rax
push %rbx
push %rsi
lea addresses_D_ht+0x18609, %rsi
nop
nop
nop
inc %r11
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %rax
nop
nop
nop
and $15537, %r13
lea addresses_normal_ht+0x4451, %rax
nop
nop
nop
nop
nop
cmp $53, %r11
movb (%rax), %bl
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x12c39, %r10
clflush (%r10)
nop
nop
xor %r11, %r11
movb $0x61, (%r10)
nop
nop
nop
sub $58054, %r11
lea addresses_WT_ht+0x19e09, %rbx
nop
nop
nop
nop
add $41304, %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_normal_ht+0x15e7c, %rax
add $63628, %r11
movb $0x61, (%rax)
nop
nop
nop
xor $7522, %rax
lea addresses_WT_ht+0x13c09, %r11
nop
nop
dec %r10
mov (%r11), %eax
nop
inc %r10
lea addresses_UC_ht+0x1c099, %r10
nop
nop
nop
nop
and $38765, %r11
mov (%r10), %r13d
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0x11fb1, %r13
nop
nop
nop
nop
nop
dec %rax
movups (%r13), %xmm1
vpextrq $0, %xmm1, %r10
nop
nop
nop
nop
sub $54549, %rbx
lea addresses_UC_ht+0x48c4, %rsi
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%rsi)
nop
and %r13, %r13
pop %rsi
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x73d9, %r11
nop
nop
nop
nop
and $12901, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_WC+0x6b31, %rdx
nop
nop
nop
nop
inc %rdi
movw $0x5152, (%rdx)
nop
cmp %r13, %r13

// Store
lea addresses_PSE+0x174b9, %r13
clflush (%r13)
nop
nop
nop
and $57378, %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm6
vmovups %ymm6, (%r13)
nop
sub %rdi, %rdi

// Store
lea addresses_WC+0x1b009, %r11
nop
nop
nop
nop
xor $54636, %rcx
mov $0x5152535455565758, %r13
movq %r13, (%r11)
nop
nop
nop
nop
nop
add $58200, %rdx

// Store
mov $0xbf0, %r13
and %rax, %rax
movb $0x51, (%r13)
nop
and $50263, %rdi

// REPMOV
lea addresses_WT+0x1e809, %rsi
lea addresses_normal+0x1d009, %rdi
nop
nop
nop
xor %r11, %r11
mov $70, %rcx
rep movsb
nop
and $59604, %rdx

// Faulty Load
lea addresses_WT+0x1e809, %r15
nop
nop
nop
cmp %r13, %r13
movups (%r15), %xmm0
vpextrq $1, %xmm0, %rdi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': True, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'39': 13063}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
