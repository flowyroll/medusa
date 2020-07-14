.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rsi
lea addresses_WC_ht+0x6ef6, %r8
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
nop
nop
inc %r8
lea addresses_normal_ht+0x864d, %rbp
nop
nop
nop
nop
cmp $40333, %r14
vmovups (%rbp), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
nop
nop
inc %rbx
lea addresses_WC_ht+0x19f66, %r10
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm4
vmovups %ymm4, (%r10)
nop
nop
cmp $60595, %rcx
lea addresses_normal_ht+0x1eef6, %rbp
nop
nop
nop
nop
sub %r14, %r14
vmovups (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
sub %rcx, %rcx
lea addresses_A_ht+0x8ef6, %rcx
nop
nop
nop
nop
nop
add $51417, %rbx
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm3
vpextrq $0, %xmm3, %rbp
nop
nop
nop
nop
nop
dec %r14
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rbp
push %rbx
push %rdi

// Faulty Load
lea addresses_D+0x19af6, %r10
nop
nop
nop
nop
nop
and $53761, %rbx
movb (%r10), %r11b
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'36': 64}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
