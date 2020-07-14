.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x2b61, %rbx
nop
nop
nop
nop
xor $31752, %r8
movb $0x51, (%rbx)
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_WC+0x17921, %rdx
nop
nop
nop
nop
sub %r8, %r8
movb $0x51, (%rdx)
nop
add $27028, %rdx

// Store
lea addresses_WT+0x1c661, %r15
nop
nop
nop
nop
nop
sub $23610, %r9
movw $0x5152, (%r15)
nop
add %r9, %r9

// Store
lea addresses_WT+0x16261, %rbx
nop
add $26714, %rdi
movw $0x5152, (%rbx)
nop
nop
add $31036, %rdx

// Store
mov $0xa61, %r15
cmp $42761, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovaps %ymm5, (%r15)
nop
xor %rdx, %rdx

// Store
lea addresses_US+0x51ab, %rbx
and $14034, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
and $20483, %rdi

// Load
lea addresses_WT+0x1c661, %rdi
nop
nop
nop
nop
nop
xor %rsi, %rsi
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbx
cmp %rsi, %rsi

// Store
lea addresses_RW+0x123a9, %r9
nop
nop
nop
nop
nop
sub $13135, %rbx
movw $0x5152, (%r9)
add $36590, %rbx

// Store
mov $0x4d7eea0000000321, %rsi
nop
dec %r9
movw $0x5152, (%rsi)
inc %r15

// Load
mov $0xb21, %r8
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov (%r8), %di
nop
nop
nop
nop
and %r15, %r15

// Store
lea addresses_A+0x14a61, %r8
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%r8)
nop
nop
nop
nop
cmp $39189, %r15

// Faulty Load
lea addresses_WT+0x1c661, %rsi
inc %rdx
mov (%rsi), %edi
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'52': 5}
52 52 52 52 52
*/
