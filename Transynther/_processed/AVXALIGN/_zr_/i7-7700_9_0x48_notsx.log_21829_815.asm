.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x17e5, %rdx
add $53886, %rdi
movb $0x61, (%rdx)
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0x1d3c5, %rsi
lea addresses_WT_ht+0x3f9, %rdi
nop
nop
and %r11, %r11
mov $78, %rcx
rep movsq
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0xb5e5, %r8
nop
nop
dec %rbx
movb (%r8), %r11b
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x6fe5, %rsi
lea addresses_UC_ht+0x77, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %r8, %r8
mov $36, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x169e5, %rsi
lea addresses_A_ht+0x133e5, %rdi
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $25, %rcx
rep movsq
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x4ee5, %rdx
nop
nop
xor %r11, %r11
mov (%rdx), %rbx
nop
nop
mfence
lea addresses_normal_ht+0x1b6a5, %rdx
nop
nop
nop
inc %rbp
movb $0x61, (%rdx)
inc %rbp
lea addresses_UC_ht+0x10825, %rsi
lea addresses_WT_ht+0x8be5, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $58153, %rbx
mov $44, %rcx
rep movsq
inc %rbp
lea addresses_WT_ht+0x19ce5, %rsi
lea addresses_UC_ht+0xdaed, %rdi
nop
nop
nop
nop
inc %rbx
mov $9, %rcx
rep movsl
nop
nop
nop
nop
xor $36384, %r8
lea addresses_WT_ht+0xf7e5, %rbx
nop
nop
nop
nop
xor $13605, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm4
and $0xffffffffffffffc0, %rbx
vmovntdq %ymm4, (%rbx)
add %rbp, %rbp
lea addresses_A_ht+0x18be5, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rdi)
add $22795, %rbx
lea addresses_D_ht+0xf615, %rsi
lea addresses_WC_ht+0x1dbe5, %rdi
and $46094, %rdx
mov $0, %rcx
rep movsw
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0xb195, %rbx
nop
nop
nop
nop
nop
xor $26730, %r8
mov (%rbx), %esi
and $9280, %rdx
lea addresses_UC_ht+0x9de5, %rsi
nop
dec %r8
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x16965, %rsi
lea addresses_WT+0xfd95, %rdi
nop
nop
dec %r10
mov $75, %rcx
rep movsw
nop
and %rsi, %rsi

// REPMOV
mov $0x2c5, %rsi
lea addresses_WT+0x84e5, %rdi
nop
nop
nop
nop
cmp $45788, %r15
mov $101, %rcx
rep movsw
sub %rbx, %rbx

// Faulty Load
lea addresses_US+0x13fe5, %rsi
nop
nop
nop
dec %rdi
movaps (%rsi), %xmm2
vpextrq $0, %xmm2, %r10
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_PSE'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_P'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': True, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'dst': {'same': True, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
