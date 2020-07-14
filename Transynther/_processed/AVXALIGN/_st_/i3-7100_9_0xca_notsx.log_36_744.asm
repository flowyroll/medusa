.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x4d7a, %rsi
lea addresses_normal_ht+0xe7ae, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $96, %rcx
rep movsl
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x142fa, %r14
nop
nop
inc %rax
movb $0x61, (%r14)
nop
nop
inc %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rbx
push %rcx

// Store
mov $0x194ee2000000077a, %rcx
xor $57714, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
nop
xor $45367, %rax

// Store
lea addresses_UC+0x6cfc, %r10
nop
nop
nop
nop
add $11368, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
and $0xffffffffffffffc0, %r10
movaps %xmm6, (%r10)
nop
nop
nop
nop
nop
sub $19683, %r10

// Store
mov $0x46eb370000000f7a, %r8
nop
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r8)
nop
nop
nop
nop
inc %r8

// Faulty Load
lea addresses_A+0x13f7a, %r10
clflush (%r10)
dec %r15
mov (%r10), %ebx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'58': 36}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
