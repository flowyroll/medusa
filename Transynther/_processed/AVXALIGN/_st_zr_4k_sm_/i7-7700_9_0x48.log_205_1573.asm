.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rdi
push %rsi
lea addresses_WT_ht+0x1b733, %r14
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, (%r14)
nop
nop
nop
nop
nop
and $61322, %rsi
pop %rsi
pop %rdi
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rax
push %rbx
push %rcx

// Load
mov $0xa92, %r10
nop
nop
nop
nop
nop
and $44955, %r9
mov (%r10), %bx
nop
nop
nop
nop
nop
sub $42392, %r10

// Store
mov $0x992, %rbx
nop
nop
sub $30035, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
cmp $49179, %rbx

// Store
lea addresses_PSE+0x1b632, %r9
nop
nop
and $24223, %rcx
movw $0x5152, (%r9)
nop
xor $55891, %r13

// Store
lea addresses_D+0x1a292, %rbx
nop
nop
nop
nop
nop
cmp $51697, %rax
movb $0x51, (%rbx)

// Exception!!!
nop
nop
nop
nop
mov (0), %r9
cmp %rbx, %rbx

// Store
lea addresses_D+0x3992, %r13
nop
and $56117, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r13)
nop
nop
cmp $16964, %r10

// Store
lea addresses_WC+0x15c32, %rax
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movups %xmm0, (%rax)
nop
nop
nop
nop
nop
sub %rax, %rax

// Store
mov $0x992, %r8
sub $41286, %rbx
movw $0x5152, (%r8)
nop
nop
nop
xor $39709, %rcx

// Store
mov $0x3528ae0000000ff6, %rbx
nop
nop
nop
and %r9, %r9
movb $0x51, (%rbx)
nop
nop
nop
dec %r8

// Faulty Load
mov $0x992, %rcx
nop
nop
sub $2773, %rax
vmovaps (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'52': 199, '00': 6}
00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
