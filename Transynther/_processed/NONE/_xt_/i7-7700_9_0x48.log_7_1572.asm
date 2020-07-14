.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rax
push %rcx
push %rdx
push %rsi
lea addresses_normal_ht+0x1bb69, %rcx
nop
nop
nop
nop
nop
and $46342, %r12
movb $0x61, (%rcx)
nop
nop
nop
nop
sub $7206, %rcx
lea addresses_normal_ht+0x1da90, %r8
nop
nop
nop
add %rsi, %rsi
mov (%r8), %r10w
nop
and $61510, %r8
lea addresses_normal_ht+0x192a9, %rdx
inc %rax
movl $0x61626364, (%rdx)
nop
and $186, %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi

// Load
mov $0xaa9, %r10
clflush (%r10)
nop
nop
nop
nop
nop
add $33629, %r14
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
nop
nop
sub $32003, %r15

// Faulty Load
lea addresses_RW+0x4aa9, %r15
nop
inc %r11
vmovups (%r15), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': True, 'NT': False}}
{'32': 7}
32 32 32 32 32 32 32
*/
