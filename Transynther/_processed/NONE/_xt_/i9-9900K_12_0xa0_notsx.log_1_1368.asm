.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x6e36, %rsi
lea addresses_normal_ht+0x6236, %rdi
sub $765, %r8
mov $126, %rcx
rep movsl
nop
nop
dec %rcx
lea addresses_A_ht+0x12636, %rdx
and %r13, %r13
movl $0x61626364, (%rdx)
nop
and $62772, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_A+0x115e6, %r13
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r13)
nop
nop
sub %r11, %r11

// Store
lea addresses_normal+0x1b5c6, %r13
nop
nop
nop
nop
nop
dec %r15
mov $0x5152535455565758, %r11
movq %r11, (%r13)
nop
nop
xor %r15, %r15

// Store
mov $0x31dc9e00000003cc, %rbx
nop
and $10418, %r11
mov $0x5152535455565758, %rdi
movq %rdi, (%rbx)
nop
nop
nop
nop
cmp %rbx, %rbx

// Load
mov $0x29c1dc00000004f6, %rbx
nop
nop
nop
xor %rbp, %rbp
mov (%rbx), %rdi
nop
nop
sub $8986, %rbx

// Faulty Load
lea addresses_PSE+0x6236, %rbp
nop
nop
nop
sub %rbx, %rbx
vmovups (%rbp), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 7}}
{'33': 1}
33
*/
