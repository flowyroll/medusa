.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x6702, %r10
nop
nop
inc %r14
mov (%r10), %r8d
nop
nop
sub $22352, %rax
lea addresses_A_ht+0x17cf2, %r11
cmp $42409, %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
xor %r12, %r12
lea addresses_UC_ht+0xf2, %rsi
lea addresses_normal_ht+0x175f2, %rdi
nop
nop
nop
nop
nop
inc %rax
mov $111, %rcx
rep movsb
cmp $37241, %rsi
lea addresses_normal_ht+0x15572, %rsi
nop
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
nop
nop
nop
xor $38747, %r14
lea addresses_A_ht+0x1efb2, %rsi
lea addresses_WT_ht+0x150a, %rdi
nop
nop
nop
nop
add $33520, %rax
mov $26, %rcx
rep movsq
and %rcx, %rcx
lea addresses_WC_ht+0x612, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r12
movw $0x6162, (%rsi)
nop
dec %r8
lea addresses_A_ht+0x9272, %rsi
lea addresses_WC_ht+0x60f2, %rdi
clflush (%rsi)
nop
cmp %rax, %rax
mov $31, %rcx
rep movsw
nop
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0xe262, %rsi
lea addresses_WT_ht+0x6872, %rdi
clflush (%rsi)
nop
nop
nop
nop
dec %r14
mov $114, %rcx
rep movsw
nop
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0x1ca72, %r11
nop
nop
nop
nop
sub $45711, %rdi
movl $0x61626364, (%r11)
nop
nop
nop
nop
cmp $7067, %r12
lea addresses_WC_ht+0x40f2, %rsi
lea addresses_normal_ht+0x2372, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $12959, %r14
mov $105, %rcx
rep movsb
nop
and $36510, %r10
lea addresses_D_ht+0x146f2, %r12
clflush (%r12)
nop
nop
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r12)
nop
nop
nop
nop
add %rax, %rax
lea addresses_WT_ht+0x2af2, %rcx
nop
nop
nop
nop
nop
dec %rsi
mov (%rcx), %r10
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x1caf2, %rdi
nop
nop
nop
nop
nop
dec %r12
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
sub %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rdx
push %rsi

// Store
lea addresses_WC+0x1a8f2, %r8
clflush (%r8)
nop
nop
nop
nop
sub %rdx, %rdx
movb $0x51, (%r8)
nop
nop
nop
nop
cmp $48368, %rsi

// Faulty Load
lea addresses_WC+0x1a8f2, %rsi
nop
inc %r8
movntdqa (%rsi), %xmm1
vpextrq $1, %xmm1, %rdx
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 11}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'49': 4, '3f': 48, '6c': 21, '45': 3872, '00': 17456, '48': 428}
00 00 6c 6c 6c 6c 6c 00 00 6c 00 6c 00 00 00 6c 6c 6c 00 6c 00 00 6c 00 6c 6c 6c 6c 6c 00 00 6c 00 00 6c 00 00 00 6c 00 6c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 45 45 00 00 45 45 00 45 45 00 45 45 00 45 00 00 45 45 45 00 00 00 00 45 00 00 45 45 00 45 45 00 45 45 00 00 45 45 45 00 45 00 00 45 00 45 00 45 00 00 00 00 00 45 45 45 00 00 45 45 45 45 00 45 00 00 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 45 45 00 00 45 45 00 45 45 00 45 00 00 45 00 00 45 45 45 45 45 45 45 45 45 00 00 45 45 45 00 45 45 45 00 00 00 45 00 00 00 00 45 45 00 45 45 45 45 00 45 00 45 45 00 45 45 00 45 00 45 45 00 45 00 45 45 00 00 45 45 45 00 00 45 00 45 00 00 45 45 00 45 00 48 48 00 48 48 48 00 48 48 48 48 48 45 48 45 00 48 00 48 00 00 48 48 00 00 00 48 48 45 00 48 00 48 48 48 48 00 48 00 00 45 00 00 00 00 00 00 00 00 00 48 48 00 48 00 48 00 00 48 45 45 00 48 48 45 00 48 48 48 48 00 48 00 48 00 48 00 00 48 48 00 00 48 48 48 48 48 00 48 00 48 48 00 00 00 00 00 00 00 45 00 48 00 48 48 48 48 48 00 48 48 48 00 48 00 00 48 00 00 48 48 00 48 48 00 00 48 00 00 48 00 48 00 48 48 00 00 00 00 00 00 48 00 48 48 48 48 00 48 48 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 45 00 00 45 00 45 45 45 45 00 45 00 00 45 00 00 45 45 00 45 00 45 00 45 45 45 00 45 00 45 45 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
