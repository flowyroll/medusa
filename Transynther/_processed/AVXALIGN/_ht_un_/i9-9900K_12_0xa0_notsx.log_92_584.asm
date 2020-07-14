.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x2e9d, %rdx
xor $32047, %r11
mov $0x6162636465666768, %rbp
movq %rbp, (%rdx)
nop
sub $55222, %rax
lea addresses_normal_ht+0xed1d, %rdx
clflush (%rdx)
nop
nop
nop
add %rbx, %rbx
mov (%rdx), %ebp
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WT_ht+0x1959d, %rsi
lea addresses_UC_ht+0x63ed, %rdi
nop
xor %rbx, %rbx
mov $78, %rcx
rep movsl
nop
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rax
push %rbp

// Store
lea addresses_RW+0xbf25, %r9
nop
nop
nop
nop
nop
cmp $30428, %r15
mov $0x5152535455565758, %r10
movq %r10, (%r9)
nop
nop
nop
nop
dec %r9

// Faulty Load
lea addresses_US+0x3a9d, %r9
nop
nop
cmp %r14, %r14
vmovaps (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'48': 8, '49': 15, '07': 69}
07 07 49 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 49 07 07 49 07 07 07 07 49 07 07 48 07 49 07 49 07 49 07 07 07 07 07 48 07 07 07 07 49 07 07 07 07 49 07 07 49 07 07 07 49 07 07 07 07 07 07 07 48 07 07 48 07 48 07 07 49 07 07 07 49 07 49 07 48 07 07 48 07 48 07 49
*/
