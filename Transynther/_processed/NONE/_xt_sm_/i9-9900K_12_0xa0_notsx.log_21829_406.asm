.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xdbb, %rsi
lea addresses_WC_ht+0xb9d5, %rdi
nop
nop
nop
nop
nop
xor $35936, %r10
mov $33, %rcx
rep movsb
nop
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0x1b8d5, %rdi
nop
nop
nop
nop
xor $56061, %r11
mov (%rdi), %r12w
nop
nop
sub %r10, %r10
lea addresses_normal_ht+0x1a1d5, %r11
nop
nop
nop
nop
cmp $28874, %rbx
movw $0x6162, (%r11)
nop
nop
nop
nop
xor %r12, %r12
lea addresses_D_ht+0x108fc, %rsi
lea addresses_WT_ht+0x81b5, %rdi
nop
and %r10, %r10
mov $24, %rcx
rep movsw
nop
nop
nop
nop
nop
add $10821, %r11
lea addresses_normal_ht+0x14295, %rsi
lea addresses_WC_ht+0xbdd5, %rdi
xor %r15, %r15
mov $102, %rcx
rep movsl
nop
sub $14153, %rsi
lea addresses_WC_ht+0x1d5, %r15
cmp $34172, %r12
vmovups (%r15), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
nop
nop
xor $20354, %r15
lea addresses_D_ht+0x10e15, %rcx
nop
nop
nop
nop
sub $14305, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
nop
xor $53580, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x9955, %rdx
and %rsi, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%rdx)
nop
nop
nop
cmp $31736, %rsi

// Store
mov $0x1d5, %r11
nop
nop
nop
cmp %rbp, %rbp
movl $0x51525354, (%r11)
sub $55730, %rbx

// Store
lea addresses_PSE+0x1cfd7, %rbp
nop
nop
nop
nop
dec %r10
movw $0x5152, (%rbp)
and %r13, %r13

// Store
lea addresses_D+0x14eb6, %r11
add %rdx, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_WC+0x1b1d5, %rdx
nop
nop
nop
nop
nop
dec %r13
movb $0x51, (%rdx)
nop
sub $64210, %rbp

// Store
lea addresses_WT+0x11d0d, %r10
nop
cmp $19981, %r13
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movups %xmm3, (%r10)
nop
nop
nop
nop
nop
cmp $5864, %r10

// Store
lea addresses_A+0x1e7d5, %rbx
nop
nop
nop
xor %r10, %r10
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
cmp $16168, %r11

// Store
lea addresses_PSE+0x181d5, %rbx
cmp %r11, %r11
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_PSE+0x181d5, %r11
clflush (%r11)
nop
nop
nop
nop
nop
dec %rbx
mov (%r11), %dx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
