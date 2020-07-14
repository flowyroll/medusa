.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x65e5, %rsi
lea addresses_A_ht+0x126b9, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $40, %rcx
rep movsl
nop
sub %rbx, %rbx
lea addresses_A_ht+0x378c, %rsi
nop
nop
nop
nop
sub %rbx, %rbx
movb $0x61, (%rsi)
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x2401, %rdi
nop
nop
nop
nop
nop
and $64275, %rbx
movb (%rdi), %r10b
cmp %r10, %r10
lea addresses_A_ht+0xeeb9, %r13
nop
nop
nop
dec %r9
and $0xffffffffffffffc0, %r13
vmovaps (%r13), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r10
nop
and %rsi, %rsi
lea addresses_UC_ht+0x109d1, %r10
xor %r13, %r13
movl $0x61626364, (%r10)
nop
xor $18767, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rax
push %rbx
push %rdi
push %rdx

// Store
mov $0x45814e0000000eb9, %rdi
nop
nop
and %r9, %r9
movb $0x51, (%rdi)
nop
nop
nop
add $44131, %r9

// Store
mov $0x39, %r9
sub %rdx, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movaps %xmm1, (%r9)
nop
inc %rbx

// Store
lea addresses_WT+0x6b9, %rax
cmp $65365, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movntdq %xmm4, (%rax)
nop
xor $24084, %rax

// Store
lea addresses_WT+0x1b6b9, %rbx
clflush (%rbx)
nop
nop
and %rax, %rax
movw $0x5152, (%rbx)
xor $44436, %rdx

// Store
lea addresses_WC+0x114b9, %rdx
nop
nop
nop
nop
nop
xor $3659, %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%rdx)
nop
nop
nop
nop
nop
dec %rdi

// Load
lea addresses_WC+0x14eb9, %rdi
nop
nop
nop
dec %rbx
mov (%rdi), %r9
nop
nop
nop
nop
nop
and $34767, %rdx

// Faulty Load
lea addresses_WT+0x6b9, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
inc %rax
mov (%rdx), %rbx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'52': 14389}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
