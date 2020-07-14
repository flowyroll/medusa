.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x10786, %r11
nop
nop
nop
inc %r8
vmovups (%r11), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x18eb6, %rsi
lea addresses_normal_ht+0xa086, %rdi
nop
nop
nop
dec %r14
mov $42, %rcx
rep movsb
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x11716, %r11
clflush (%r11)
nop
nop
nop
nop
cmp %r14, %r14
movl $0x61626364, (%r11)
nop
nop
nop
nop
add $17502, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WC+0xd89c, %rdx
nop
nop
and %rcx, %rcx
movb $0x51, (%rdx)
and $46214, %r9

// Store
lea addresses_UC+0x16536, %rbx
clflush (%rbx)
nop
nop
nop
xor $48058, %r12
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
mov $0xc76, %rcx
clflush (%rcx)
nop
nop
nop
nop
xor $52184, %r13
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Faulty Load
lea addresses_WT+0x1ec06, %r12
nop
xor $44322, %rbx
vmovups (%r12), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 4, 'same': False}}
{'39': 68}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
