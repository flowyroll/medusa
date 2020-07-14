.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdx
push %rsi
lea addresses_UC_ht+0xbc09, %rcx
clflush (%rcx)
nop
nop
nop
and $61812, %rdx
movb (%rcx), %al
nop
nop
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0x19609, %rsi
nop
nop
xor $64897, %r9
mov (%rsi), %r15
nop
xor %rax, %rax
lea addresses_UC_ht+0x5909, %r8
dec %rdx
movl $0x61626364, (%r8)
nop
sub %r8, %r8
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbp
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WT+0xea09, %r15
nop
nop
nop
nop
xor %r9, %r9
vmovaps (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
nop
nop
sub $56331, %rbp

// Load
lea addresses_US+0xa09, %rdx
nop
nop
nop
nop
inc %rsi
mov (%rdx), %r15d
cmp $51549, %rbp

// Store
lea addresses_D+0x1fe09, %r9
nop
inc %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r9)
nop
nop
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_D+0x1fe09, %rdi
nop
nop
nop
xor %r9, %r9
mov (%rdi), %dx
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 71}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
