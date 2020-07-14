.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x39f5, %rax
nop
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rax)
and $15910, %rdx
lea addresses_D_ht+0x125f5, %r11
nop
nop
inc %r15
mov (%r11), %r9w
nop
nop
nop
nop
dec %r14
lea addresses_D_ht+0xd226, %rsi
lea addresses_A_ht+0x151f5, %rdi
nop
nop
nop
nop
cmp $22700, %rdx
mov $5, %rcx
rep movsb
nop
nop
add $9293, %r9
lea addresses_UC_ht+0x4c45, %rdi
nop
nop
nop
nop
nop
sub %rax, %rax
mov (%rdi), %r15w
nop
nop
nop
nop
nop
xor $2933, %r15
lea addresses_UC_ht+0x61bf, %rsi
lea addresses_WC_ht+0x12d95, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r14
mov $96, %rcx
rep movsq
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x1e525, %r15
nop
nop
sub $4188, %r9
mov (%r15), %ax
nop
nop
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0x5681, %rcx
nop
nop
nop
xor %rax, %rax
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
nop
sub $32650, %rcx
lea addresses_WT_ht+0x11285, %rdx
clflush (%rdx)
nop
cmp $7278, %rcx
movb (%rdx), %r9b
nop
nop
nop
nop
nop
xor $65452, %rax
lea addresses_WC_ht+0xd9f5, %rax
nop
nop
nop
cmp %rdx, %rdx
mov (%rax), %cx
nop
cmp $59586, %rdi
lea addresses_normal_ht+0x1c015, %rdi
add %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, (%rdi)
nop
nop
nop
nop
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WC+0xfff5, %rdi
nop
nop
nop
nop
and $60583, %rcx
movb $0x51, (%rdi)
nop
nop
nop
nop
sub $37797, %rax

// Load
lea addresses_US+0x49f5, %rax
nop
nop
nop
nop
sub $41143, %r10
vmovups (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
add %rax, %rax

// Faulty Load
lea addresses_US+0x49f5, %rdx
nop
nop
nop
nop
and %rcx, %rcx
vmovntdqa (%rdx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'b6': 89, '02': 28, '20': 90, 'ab': 478, '47': 31, 'e0': 90, '48': 87, '98': 105, '78': 91, '00': 18619, '7c': 91, '75': 188, '1e': 92, 'be': 91, 'e2': 92, 'aa': 744, 'c4': 91, 'fa': 93, 'ec': 89, 'a8': 90, '79': 1, 'd8': 91, '0a': 70, 'c0': 89, '12': 91, '9d': 25, '4a': 93}
00 02 02 02 02 02 02 00 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 aa aa aa aa aa aa 00 aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa 00 aa aa aa 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 00 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 00 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
