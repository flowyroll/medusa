.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x94a1, %rsi
lea addresses_A_ht+0x192a1, %rdi
nop
nop
nop
nop
nop
cmp $24205, %r11
mov $115, %rcx
rep movsl
nop
nop
and %r15, %r15
lea addresses_WT_ht+0x1811, %rax
nop
nop
nop
cmp $8615, %r11
mov (%rax), %si
cmp %rdi, %rdi
lea addresses_normal_ht+0x17421, %rax
nop
nop
nop
and %r9, %r9
movups (%rax), %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
nop
xor $4690, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rsi

// Store
lea addresses_PSE+0x15, %r11
nop
nop
inc %r14
mov $0x5152535455565758, %r12
movq %r12, (%r11)
nop
nop
nop
nop
nop
cmp $6006, %r11

// Store
lea addresses_D+0x1f521, %rbx
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%rbx)
and $4490, %rbp

// Store
mov $0x5db1020000000d21, %r11
nop
cmp $6323, %r14
movw $0x5152, (%r11)
cmp $20322, %rbx

// Load
mov $0x38b9ab0000000521, %r14
clflush (%r14)
nop
nop
and %r9, %r9
mov (%r14), %esi
nop
sub $26780, %rbx

// Load
mov $0x69ebc60000000ba1, %r12
nop
and %rsi, %rsi
movb (%r12), %r9b
nop
inc %rbx

// Store
mov $0x5db1020000000d21, %r9
nop
nop
nop
nop
sub %rbp, %rbp
movb $0x51, (%r9)
nop
nop
nop
inc %r9

// Store
mov $0x7905d60000000221, %r9
nop
cmp %rbx, %rbx
movl $0x51525354, (%r9)
nop
nop
nop
nop
add $33145, %r14

// Store
lea addresses_PSE+0xa681, %rsi
nop
nop
add %r12, %r12
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Load
lea addresses_D+0x1e301, %rbp
nop
nop
nop
inc %rsi
mov (%rbp), %r9
nop
nop
nop
xor %rbp, %rbp

// Faulty Load
mov $0x5db1020000000d21, %r11
sub %rbx, %rbx
movups (%r11), %xmm5
vpextrq $1, %xmm5, %r14
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2, 'NT': True, 'same': True, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 6}, 'OP': 'LOAD'}
{'25': 1, '00': 1}
00 25
*/
