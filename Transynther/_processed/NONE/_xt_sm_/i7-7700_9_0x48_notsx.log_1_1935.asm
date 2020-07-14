.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rbx
lea addresses_A_ht+0x8f25, %r10
nop
cmp %r8, %r8
mov (%r10), %rbx
nop
add $47369, %rbx
lea addresses_UC_ht+0x8fa5, %r14
nop
nop
nop
nop
cmp $366, %rbp
movb $0x61, (%r14)
nop
nop
sub $48177, %r10
lea addresses_A_ht+0xb6a5, %r10
nop
nop
nop
nop
nop
and $39590, %r11
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rax
nop
cmp %r8, %r8
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_RW+0xa412, %r12
nop
nop
xor $30686, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movaps %xmm7, (%r12)
nop
sub $16903, %r14

// Store
lea addresses_RW+0x1d391, %rax
nop
nop
inc %rsi
mov $0x5152535455565758, %r14
movq %r14, (%rax)
nop
nop
nop
and $26119, %rax

// Store
lea addresses_D+0x148a5, %r12
nop
nop
nop
nop
nop
dec %rcx
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
add $49154, %rax

// Store
lea addresses_WT+0x158a5, %r14
nop
nop
sub $301, %r11
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
xor $38604, %rdx

// Store
lea addresses_UC+0x19aa5, %rsi
nop
nop
nop
nop
nop
inc %r14
movb $0x51, (%rsi)
nop
nop
add %rax, %rax

// Faulty Load
lea addresses_D+0x148a5, %rdx
nop
sub %r14, %r14
mov (%rdx), %r11w
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 9}}
{'52': 1}
52
*/
