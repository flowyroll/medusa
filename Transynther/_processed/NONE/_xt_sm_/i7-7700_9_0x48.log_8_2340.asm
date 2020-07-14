.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rsi
lea addresses_A_ht+0x9736, %rcx
sub %rbp, %rbp
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
nop
nop
nop
nop
nop
sub $20580, %r12
lea addresses_WC_ht+0x1a976, %r15
nop
xor $44566, %r9
mov (%r15), %bp
nop
nop
nop
nop
xor %r12, %r12
lea addresses_A_ht+0x6cb6, %rsi
nop
xor $22775, %rbx
mov (%rsi), %rcx
nop
and %r12, %r12
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_D+0x11176, %rbx
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rbx)
xor $52301, %rcx

// Store
mov $0x2176300000000ee8, %rcx
nop
nop
nop
nop
add $14500, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rcx)
nop
cmp %r8, %r8

// Store
lea addresses_D+0x17cef, %r10
nop
nop
nop
add $32861, %r9
movw $0x5152, (%r10)
nop
dec %rsi

// Faulty Load
lea addresses_D+0x11176, %rbp
clflush (%rbp)
nop
nop
nop
nop
xor $57779, %rbx
mov (%rbp), %rsi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'58': 8}
58 58 58 58 58 58 58 58
*/
