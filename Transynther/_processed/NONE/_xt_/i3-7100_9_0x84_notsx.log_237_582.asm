.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x9452, %rsi
lea addresses_D_ht+0xd5e6, %rdi
nop
nop
nop
xor %r15, %r15
mov $95, %rcx
rep movsl
nop
nop
and %r15, %r15
lea addresses_WT_ht+0xc3d2, %rsi
lea addresses_A_ht+0x8e22, %rdi
clflush (%rsi)
nop
nop
nop
and %r13, %r13
mov $21, %rcx
rep movsl
nop
inc %rdi
lea addresses_D_ht+0xf52, %rsi
lea addresses_D_ht+0x1a362, %rdi
clflush (%rsi)
sub %rbx, %rbx
mov $6, %rcx
rep movsl
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x166d2, %rsi
nop
xor %r12, %r12
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
nop
nop
nop
nop
and $9403, %r12
lea addresses_A_ht+0xc9d2, %rsi
lea addresses_A_ht+0x1eaba, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %rax, %rax
mov $105, %rcx
rep movsl
nop
nop
add %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x10fd2, %r8
nop
nop
dec %rdi
movb $0x51, (%r8)
nop
sub $8239, %r8

// Load
mov $0x331e4900000000d2, %r11
nop
nop
nop
nop
nop
sub $2000, %rcx
movups (%r11), %xmm4
vpextrq $1, %xmm4, %r8
add $34124, %rdi

// Store
lea addresses_D+0x156d2, %rcx
clflush (%rcx)
sub %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_PSE+0x14ed2, %r11
nop
nop
nop
nop
xor %rsi, %rsi
mov (%r11), %bx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'33': 237}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
