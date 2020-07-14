.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbx
push %rdx
push %rsi
lea addresses_normal_ht+0x1b45c, %rsi
nop
nop
nop
and %r15, %r15
movb (%rsi), %r8b
add $40066, %rsi
lea addresses_WC_ht+0x122c9, %rdx
nop
xor %rax, %rax
movb (%rdx), %bl
nop
cmp $40078, %r15
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rdi
push %rdx
push %rsi

// Load
lea addresses_PSE+0x1d6e1, %rdx
nop
nop
nop
nop
and %rax, %rax
movups (%rdx), %xmm3
vpextrq $1, %xmm3, %r14
nop
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_PSE+0x4609, %rsi
nop
nop
nop
nop
sub $4473, %r8
mov $0x5152535455565758, %r14
movq %r14, (%rsi)
lfence

// Store
lea addresses_UC+0x17391, %r11
nop
nop
inc %rsi
movl $0x51525354, (%r11)
sub $63061, %rax

// Store
lea addresses_D+0x1e449, %rax
nop
nop
nop
nop
and $63725, %rdi
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_PSE+0xf49, %rax
nop
nop
nop
nop
cmp $59865, %r8
mov $0x5152535455565758, %rdi
movq %rdi, (%rax)
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_PSE+0xf49, %r8
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%r8), %ax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'58': 2}
58 58
*/
