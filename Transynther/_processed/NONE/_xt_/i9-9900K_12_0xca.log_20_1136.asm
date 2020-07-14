.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rcx
lea addresses_normal_ht+0x2541, %r13
nop
nop
nop
nop
inc %rcx
movb (%r13), %r12b
nop
add $13617, %r11
pop %rcx
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rdi
push %rsi

// Store
lea addresses_WC+0x1d4e1, %r9
clflush (%r9)
sub %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
nop
nop
cmp %r15, %r15

// Store
lea addresses_A+0x2a8b, %r9
nop
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
xor %r15, %r15

// Faulty Load
lea addresses_normal+0x18601, %rax
nop
nop
nop
nop
nop
xor $25956, %r9
mov (%rax), %esi
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'34': 20}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
