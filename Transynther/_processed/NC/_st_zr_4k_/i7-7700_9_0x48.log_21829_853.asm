.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xe73, %r8
nop
nop
nop
inc %r12
mov $0x6162636465666768, %r11
movq %r11, %xmm6
vmovups %ymm6, (%r8)
nop
nop
nop
dec %rax
lea addresses_A_ht+0x1777, %rsi
lea addresses_WT_ht+0x108c3, %rdi
nop
add $13784, %r15
mov $104, %rcx
rep movsq
nop
nop
lfence
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rbp
push %rbx
push %rcx

// Store
lea addresses_A+0x2183, %r11
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovups %ymm5, (%r11)

// Exception!!!
nop
nop
nop
nop
mov (0), %rcx
nop
nop
nop
nop
add %r8, %r8

// Load
mov $0x3387530000000183, %r10
nop
nop
nop
nop
nop
sub %rbx, %rbx
movb (%r10), %r12b
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_PSE+0x164f, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
cmp %r10, %r10

// Load
mov $0x3387530000000183, %rbp
nop
nop
nop
xor %r11, %r11
vmovups (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
sub $832, %r11

// Store
mov $0x3e10560000000303, %r8
nop
nop
and %r11, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%r8)
nop
nop
xor %r8, %r8

// Faulty Load
mov $0x3387530000000183, %r12
nop
nop
nop
nop
nop
cmp %r8, %r8
mov (%r12), %bp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}}
{'58': 17216, '00': 4613}
58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 00 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 58 00 58 58 00 58 00 58 00 58 58 58 58 58 58 00 00 58 00 58 00 58 00 00 00 00 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 00 00 00 00 58 00 58 58 58 58 58 58 00 00 58 00 58 58 00 58 00 58 58 58 58 58 00 00 58 58 58 00 00 00 00 58 58 58 58 58 00 58 58 00 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 00 00 00 58 00 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 00 00 00 58 58 00 58 58 00 58 58 58 00 58 58 58 00 58 00 58 00 58 00 58 58 00 00 58 58 58 58 58 58 58 00 58 00 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 00 58 00 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 00 58 00 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 00 00 00 58 58 00 58 58 58 58 58 58 00 58 00 58 58 00 00 00 58 58 58 00 00 58 00 58 58 00 58 58 00 58 58 58 58 58 58 58 00 00 00 58 58 58 00 58 58 00 58 58 58 58 58 00 58 00 00 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 00 58 58 58 00 00 58 58 58 00 00 58 58 00 58 58 58 58 58 00 00 58 00 58 58 00 00 58 00 00 58 58 00 00 00 00 00 58 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 00 58 58 00 58 58 00 58 00 00 58 00 00 58 00 58 58 58 00 58 00 58 00 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 00 00 00 58 58 00 00 58 00 58 58 00 00 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 58 00 58 58 58 58 58 00 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 00 00 58 58 58 58 58 58 58 00 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 58 58 58 00 00 00 00 00 58 58 00 00 58 58 00 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 00 00 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 00 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 00 58 00 00 58 58 00 00 00 58 00 58 58 00 58 58 00 58 58 58 00 00 00 58 58 58 00 58 58 00 58 58 00 00 58 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 00 00 58 00 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58
*/
