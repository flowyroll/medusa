.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xcde6, %rbp
add %rdx, %rdx
movups (%rbp), %xmm2
vpextrq $0, %xmm2, %rcx
nop
and $17727, %r11
lea addresses_WT_ht+0x4d44, %rsi
lea addresses_UC_ht+0x6686, %rdi
nop
nop
inc %r10
mov $56, %rcx
rep movsw
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x155c6, %r11
nop
nop
sub $51413, %rsi
movb $0x61, (%r11)
nop
nop
nop
inc %rsi
lea addresses_D_ht+0xfbe6, %rbp
and $48653, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
and $0xffffffffffffffc0, %rbp
movntdq %xmm3, (%rbp)
nop
nop
nop
add $2574, %rdx
lea addresses_UC_ht+0x189e6, %rsi
nop
nop
nop
nop
nop
and $5158, %r10
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
add $15977, %rsi
lea addresses_WT_ht+0x13ba6, %rcx
nop
sub $17431, %rbp
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_D_ht+0x1e6, %r11
nop
nop
nop
cmp %rdx, %rdx
movups (%r11), %xmm3
vpextrq $0, %xmm3, %r10
nop
lfence
lea addresses_WC_ht+0x110e6, %rsi
nop
nop
nop
nop
xor $65181, %r11
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
sub $55, %rsi
lea addresses_WT_ht+0x12b66, %r10
nop
nop
nop
nop
sub $8640, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x79b0, %rsi
lea addresses_normal_ht+0x13ad9, %rdi
nop
nop
sub %r9, %r9
mov $2, %rcx
rep movsb
nop
sub %r11, %r11
lea addresses_A_ht+0x11456, %rsi
nop
nop
cmp $37484, %rbp
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r9
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x158e6, %rdi
add $36139, %r9
mov (%rdi), %r11
nop
add $57342, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x35e6, %r12
nop
nop
nop
nop
add %r8, %r8
movb $0x51, (%r12)
and $50940, %r14

// Faulty Load
lea addresses_A+0x1dde6, %rcx
clflush (%rcx)
nop
nop
nop
xor $47572, %rsi
vmovaps (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
lea oracles, %r8
and $0xff, %rdi
shlq $12, %rdi
mov (%r8,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'45': 6996, '49': 7769, '00': 6873, '47': 191}
45 00 45 00 45 49 49 00 45 49 49 49 49 49 49 00 45 49 00 45 49 49 00 45 49 00 45 49 49 49 49 49 00 45 49 49 49 00 45 49 00 45 49 00 45 49 49 49 49 49 00 45 49 49 49 00 45 00 45 49 49 00 45 49 00 45 49 49 49 49 49 00 45 49 49 00 45 49 49 49 00 45 49 49 49 49 49 00 45 49 49 45 47 00 45 49 00 45 49 00 45 49 45 49 00 45 00 45 49 49 00 45 00 45 00 45 00 45 00 45 45 00 45 00 45 49 49 00 45 00 45 00 45 49 00 45 00 45 00 45 00 45 00 45 00 45 49 49 49 49 00 45 00 45 49 45 49 49 00 45 00 45 47 00 45 00 45 00 45 49 00 00 45 00 45 49 00 45 00 45 00 45 00 45 00 45 49 00 45 49 49 49 49 49 00 45 49 49 49 00 45 00 45 47 00 45 49 49 00 45 00 45 49 49 00 45 49 00 45 49 49 49 00 45 49 49 00 45 49 00 45 49 49 49 00 45 49 00 45 49 49 00 45 00 45 49 49 00 45 00 45 49 00 45 49 49 49 49 00 45 49 00 45 00 45 49 49 49 49 00 45 49 00 45 49 49 00 45 00 45 49 00 45 49 45 00 45 00 45 00 45 49 49 00 45 49 49 00 45 00 45 49 00 45 45 00 45 49 49 49 00 45 49 00 45 49 00 45 49 49 49 49 49 00 45 49 49 49 49 49 00 45 49 49 49 49 49 00 45 49 00 45 00 45 49 49 00 45 49 00 45 49 00 45 49 00 45 00 45 49 45 00 45 00 45 00 45 49 00 45 49 00 45 00 45 00 45 49 49 49 00 45 00 45 49 49 00 45 49 49 00 45 49 49 49 49 00 45 00 45 00 45 49 49 00 45 00 45 49 49 49 49 00 45 49 45 00 45 00 45 49 49 00 45 00 45 00 45 00 45 00 45 49 49 49 49 00 45 00 45 00 45 47 00 45 00 45 49 00 45 49 00 45 00 45 00 45 00 45 49 49 00 45 49 49 49 00 45 00 45 00 45 00 45 00 45 49 49 49 49 00 45 49 00 45 00 45 49 49 00 45 00 45 00 45 00 45 49 00 45 49 49 49 49 49 00 45 49 49 49 49 00 45 00 45 00 45 49 49 00 45 49 49 00 45 00 45 49 49 00 45 00 45 49 49 00 45 49 00 45 00 45 00 45 00 45 00 45 00 45 49 49 49 00 45 00 45 00 45 00 45 49 49 00 45 49 00 45 00 45 00 00 45 00 45 00 45 00 45 49 00 45 49 49 00 45 00 45 49 49 00 45 49 00 45 00 45 00 45 00 45 49 00 45 49 49 00 45 49 49 49 49 49 49 00 45 49 49 49 49 00 45 00 45 00 45 49 49 49 49 00 45 49 00 45 47 49 00 45 00 45 00 45 49 49 49 00 45 00 45 49 49 00 45 49 49 00 45 49 49 49 00 45 49 49 49 00 45 49 00 45 49 00 45 00 45 49 49 49 49 49 00 45 00 45 00 45 00 45 00 45 00 45 00 45 49 00 45 49 00 45 49 49 49 49 49 49 49 00 45 00 45 49 00 45 00 45 00 45 00 45 49 45 49 00 45 49 00 45 49 49 49 49 49 00 45 49 49 49 00 45 00 45 49 00 45 00 45 49 49 00 45 49 49 00 45 00 45 49 00 45 49 49 49 00 45 00 45 49 00 45 00 45 00 45 00 45 49 00 45 00 45 00 45 49 49 00 45 49 00 45 49 00 45 49 49 49 49 49 00 45 49 49 49 49 49 00 45 49 49 49 49 49 49 00 45 00 45 49 00 45 49 00 45 45 00 45 00 45 00 45 49 00 45 49 49 49 49 49 00 45 49 00 45 00 45 49 49 49 49 00 45 49 49 49 00 45 00 45 49 49 00 45 49 49 00 45 00 45 49 49 49 49 00 45 49 00 45 49 00 45 49 49 00 45 49 49 49 00 45 49 00 45 49 00 45 49 49 00 45 49 00 45 00 45 49 49 49 00 45 00 45 00 45 49 49 00 45 49 00 45 49 49 49 49 00 45 00 45 00 45 49 49 00 45 00 45 00 45 00 45 49 00 45 49 49 00 45 49 49 49 49 00 45 49 00 45 49 00 45 49 49 49 49 00 45 49 00 45 47 00 45 00 45 00 45 49 49 00 45 49 00 45 49 00 45 49 49 00 45 00 45 00 45 49 00 45 49 49 49
*/
