.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x16a80, %rdx
nop
nop
nop
nop
xor $58559, %rbp
movups (%rdx), %xmm1
vpextrq $1, %xmm1, %rax
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0xc200, %r10
nop
and %r8, %r8
and $0xffffffffffffffc0, %r10
movaps (%r10), %xmm7
vpextrq $0, %xmm7, %rax
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0xd580, %rdx
nop
nop
sub $54148, %r11
and $0xffffffffffffffc0, %rdx
movaps (%rdx), %xmm3
vpextrq $1, %xmm3, %rbp
nop
and $7500, %r8
lea addresses_A_ht+0x1b878, %rsi
lea addresses_WC_ht+0x1d480, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r10, %r10
mov $62, %rcx
rep movsw
nop
nop
cmp $12116, %r8
lea addresses_UC_ht+0x16242, %rdx
nop
nop
nop
inc %rax
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
cmp $65494, %rdx
lea addresses_D_ht+0x126b4, %rax
nop
nop
nop
sub $5403, %rdi
movw $0x6162, (%rax)
nop
nop
nop
sub $48461, %r11
lea addresses_WT_ht+0x58c8, %r10
sub %rbp, %rbp
mov $0x6162636465666768, %r11
movq %r11, (%r10)
nop
nop
nop
nop
nop
and $59185, %rdi
lea addresses_D_ht+0xcc80, %rsi
lea addresses_normal_ht+0x9880, %rdi
nop
nop
nop
inc %rbp
mov $7, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0x8480, %rsi
lea addresses_WT_ht+0x9d1c, %rdi
xor %r11, %r11
mov $41, %rcx
rep movsb
xor $48204, %rax
lea addresses_A_ht+0x1d500, %rsi
nop
inc %rbp
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r11
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x4500, %rax
add %rbp, %rbp
mov (%rax), %edx
sub %r8, %r8
lea addresses_UC_ht+0xa080, %rdi
nop
nop
sub %r8, %r8
mov (%rdi), %dx
nop
nop
dec %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rdx
push %rsi

// Faulty Load
lea addresses_A+0x1e080, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
and $4273, %rdx
vmovups (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r10
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rsi
pop %rdx
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': True, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'45': 360, '49': 1, '00': 21382, '46': 86}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 46 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00
*/
