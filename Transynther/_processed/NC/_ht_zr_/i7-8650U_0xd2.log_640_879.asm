.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x110b4, %rsi
lea addresses_WC_ht+0x61b4, %rdi
nop
nop
add $63404, %rbp
mov $45, %rcx
rep movsb
cmp $29612, %r14
lea addresses_UC_ht+0x26b4, %rax
nop
nop
nop
xor %r10, %r10
vmovups (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0xa514, %rax
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov (%rax), %edi
cmp %rbp, %rbp
lea addresses_WT_ht+0x1e4, %rsi
lea addresses_normal_ht+0x5af8, %rdi
clflush (%rsi)
sub $22124, %r11
mov $56, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x1aacd, %rcx
nop
nop
nop
nop
cmp $59146, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
nop
cmp %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rbx
push %rdx

// Store
lea addresses_WT+0x6cb4, %rdx
nop
nop
nop
nop
sub $31400, %r13
movb $0x51, (%rdx)
nop
nop
nop
nop
cmp %r12, %r12

// Faulty Load
mov $0x69e84e00000000b4, %r13
clflush (%r13)
nop
nop
nop
nop
dec %rbx
vmovups (%r13), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r8
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rdx
pop %rbx
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'49': 487, '00': 149, '47': 4}
49 49 49 49 00 00 49 49 49 49 49 00 49 49 00 49 49 49 49 49 49 49 49 00 49 49 00 49 49 49 00 49 49 49 00 49 49 49 00 00 49 49 49 49 49 49 00 49 00 00 49 49 00 49 00 49 49 49 49 49 49 49 00 00 49 49 49 00 49 49 49 49 49 49 49 49 49 49 00 49 00 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 00 49 49 00 00 49 49 49 49 49 49 49 49 49 00 49 49 00 49 00 49 49 49 00 49 49 49 49 49 49 49 00 49 49 00 00 49 49 49 49 49 49 49 49 49 49 00 00 49 49 00 49 49 49 49 49 49 00 49 49 49 00 49 00 00 49 49 47 00 00 49 00 00 49 49 49 00 49 49 49 49 00 00 49 49 49 00 49 49 49 49 49 49 49 00 49 49 49 00 49 49 49 49 00 00 49 00 00 49 00 49 49 49 49 49 49 49 00 49 49 49 49 00 49 49 49 49 00 49 49 49 49 49 49 49 49 00 00 49 49 00 49 00 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 00 49 00 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 00 49 49 00 49 49 00 49 49 49 49 49 49 49 49 00 49 49 49 49 49 00 49 49 00 49 49 49 00 49 49 49 49 49 00 00 49 49 49 49 49 49 49 49 00 49 00 00 49 00 49 49 49 49 49 49 00 00 00 49 00 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 00 49 49 00 00 49 49 47 00 49 49 49 49 49 49 00 49 49 49 49 00 49 49 49 00 49 49 00 49 49 00 49 49 00 00 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 47 49 00 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 47 49 00 49 49 00 49 49 49 49 00 49 00 49 49 49 49 00 49 00 49 49 49 49 49 49 00 49 49 00 00 49 00 49 00 00 00 00 49 49 49 49 49 00 49 00 00 49 00 00 49 49 49 49 49 49 49 49 00 00 00 49 49 49 00 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 00 00 49 49 49 00 49 00 49 49 00 00 49 00 49 49 00 49 49 49 49 49 00 00 49 49 49 49 00 49 49 00 49 49 49 49 49 49 49 49 00 49 00 49 00 00 49 49 49 00 00 49 49 49 49 49 00 49 49 49 49 49 49 49 49 00 49 49 49 49 49 00 49 00 49 49 49 00 00 49 49 49 49 49 49 49 49 49 49 00 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49
*/
