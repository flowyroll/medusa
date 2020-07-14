.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x3373, %r13
nop
nop
nop
xor $36484, %rbx
mov (%r13), %ecx
nop
nop
nop
xor $36528, %r8
lea addresses_UC_ht+0x1c3fd, %rsi
lea addresses_A_ht+0x1e9c7, %rdi
nop
nop
nop
cmp $11829, %r12
mov $109, %rcx
rep movsl
and $6542, %rsi
lea addresses_A_ht+0x79c3, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %r12, %r12
mov (%rdi), %bx
nop
inc %rcx
lea addresses_A_ht+0x16a03, %r13
nop
nop
nop
add $26341, %r12
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r13)
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0xdfe3, %rsi
lea addresses_D_ht+0x98b6, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $59072, %r14
mov $95, %rcx
rep movsb
nop
nop
nop
nop
add $43800, %rdi
lea addresses_normal_ht+0x1eaa4, %rsi
clflush (%rsi)
nop
nop
nop
cmp $5837, %rdi
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x1103, %rsi
lea addresses_WT_ht+0xd63, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $15, %rcx
rep movsb
nop
nop
nop
sub $32518, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rsi

// Store
lea addresses_PSE+0xb237, %rsi
clflush (%rsi)
nop
cmp %r8, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
inc %r11

// Store
mov $0x7afec80000000d03, %r9
nop
nop
nop
nop
nop
cmp $23024, %rbx
movl $0x51525354, (%r9)
nop
nop
nop
nop
dec %r15

// Store
lea addresses_US+0x73ab, %r8
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
nop
add %r9, %r9

// Faulty Load
mov $0x7afec80000000d03, %rsi
nop
nop
nop
add $38128, %r15
mov (%rsi), %r9
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'54': 42, '00': 7}
54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 00 54 00 54 54 00 54 54 54 54 54 54 54 54 00 54 54
*/
