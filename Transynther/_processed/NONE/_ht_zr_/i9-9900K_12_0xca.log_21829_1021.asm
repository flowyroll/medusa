.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x13921, %r11
clflush (%r11)
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov (%r11), %rbx
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0xa8a1, %rsi
lea addresses_UC_ht+0x9121, %rdi
dec %r14
mov $72, %rcx
rep movsq
nop
cmp $21667, %rdi
lea addresses_UC_ht+0x191a1, %rdi
clflush (%rdi)
sub $12182, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0xe421, %rbx
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0x11a21, %rdx
clflush (%rdx)
nop
inc %rbx
mov (%rdx), %r11d
nop
nop
nop
xor $39207, %rsi
lea addresses_UC_ht+0xd239, %r11
nop
nop
nop
add $55137, %rsi
movl $0x61626364, (%r11)
add %rbx, %rbx
lea addresses_normal_ht+0x13d21, %rsi
lea addresses_WT_ht+0xb9d9, %rdi
and %rbx, %rbx
mov $90, %rcx
rep movsl
and $33569, %r14
lea addresses_normal_ht+0xe6c5, %rsi
lea addresses_WC_ht+0x3a1, %rdi
clflush (%rsi)
nop
nop
add %rbx, %rbx
mov $22, %rcx
rep movsl
nop
nop
nop
nop
nop
and $1737, %rsi
lea addresses_WC_ht+0x5741, %rsi
lea addresses_normal_ht+0x10f21, %rdi
nop
nop
nop
nop
nop
sub %r10, %r10
mov $29, %rcx
rep movsq
nop
inc %rdi
lea addresses_WT_ht+0xaf01, %rsi
lea addresses_normal_ht+0xfbad, %rdi
xor %rbx, %rbx
mov $116, %rcx
rep movsb
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x163c, %rsi
lea addresses_WC_ht+0x19921, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $38, %rcx
rep movsw
nop
nop
nop
inc %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rcx
push %rdx

// Store
lea addresses_US+0x18e11, %r9
nop
nop
sub $12242, %rdx
movb $0x51, (%r9)
nop
nop
nop
xor %r14, %r14

// Load
lea addresses_UC+0xd021, %r8
nop
nop
xor $4809, %rcx
mov (%r8), %r9d
nop
inc %r10

// Faulty Load
lea addresses_UC+0x1a921, %r8
clflush (%r8)
nop
and %r11, %r11
vmovups (%r8), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'44': 19936, '49': 1867, '00': 23, '48': 3}
44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 49 49 49 49 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 49 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 49 44 49 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 49 44 44 44 49 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 49 49 49 44 44 44 00 44 44 44 44 44 44 49 44 44 44 44 49 49 49 44 49 44 44 44 44 44 44 44 44 44 44 44 44 49 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 49 44 44 44 44 44 44 44 49 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 49 44 44 44 44 44 44 44 44 44 44 44 49 44 49 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 49 44 44 44 44 49 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 49 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 49 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 49 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44
*/
