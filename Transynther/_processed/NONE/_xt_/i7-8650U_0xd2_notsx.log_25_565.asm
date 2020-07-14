.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rcx
lea addresses_normal_ht+0xbc47, %r15
clflush (%r15)
nop
nop
nop
nop
nop
dec %r9
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
sub $17030, %r14
lea addresses_normal_ht+0x13187, %rbp
nop
nop
dec %rbx
mov (%rbp), %cx
nop
sub $43399, %rbp
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x1987, %rsi
lea addresses_WC+0x1f587, %rdi
nop
nop
nop
nop
add %r9, %r9
mov $61, %rcx
rep movsb
nop
and %r9, %r9

// Store
lea addresses_WT+0x138f7, %r10
clflush (%r10)
nop
nop
sub $58216, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r10)
nop
and %rsi, %rsi

// REPMOV
lea addresses_UC+0x12087, %rsi
lea addresses_D+0x13987, %rdi
clflush (%rdi)
and %r15, %r15
mov $56, %rcx
rep movsl
nop
nop
nop
nop
sub $32708, %rdi

// Store
mov $0x7e1e00000000187, %rsi
sub %r10, %r10
movw $0x5152, (%rsi)

// Exception!!!
nop
nop
nop
nop
mov (0), %r15
nop
nop
dec %rsi

// Load
lea addresses_D+0x13b87, %rsi
and $35682, %rdi
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r11
xor %r10, %r10

// Faulty Load
lea addresses_D+0x1987, %rdi
nop
nop
dec %r15
mov (%rdi), %ecx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WC', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'36': 25}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
