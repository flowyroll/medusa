.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x12400, %rcx
clflush (%rcx)
nop
nop
xor $46519, %r13
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
cmp %rbp, %rbp
lea addresses_A_ht+0x1290e, %r8
nop
nop
nop
cmp $8975, %r12
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%r8)
nop
nop
dec %r10
lea addresses_D_ht+0x178de, %r8
nop
sub %r12, %r12
mov (%r8), %r10d
add $34137, %rcx
lea addresses_D_ht+0x651e, %r10
nop
nop
nop
nop
nop
inc %r11
movw $0x6162, (%r10)
add %rbp, %rbp
lea addresses_D_ht+0x22de, %r10
nop
and %rbp, %rbp
mov $0x6162636465666768, %r13
movq %r13, (%r10)
nop
cmp %r8, %r8
lea addresses_D_ht+0x4b56, %r8
clflush (%r8)
sub %r12, %r12
mov $0x6162636465666768, %r10
movq %r10, (%r8)
nop
nop
nop
nop
dec %r11
lea addresses_UC_ht+0x1181e, %r12
nop
inc %r11
mov (%r12), %bp
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_A_ht+0xae1e, %rcx
nop
cmp $51797, %r11
movb $0x61, (%rcx)
nop
xor %r10, %r10
lea addresses_WC_ht+0xb70e, %rsi
lea addresses_WT_ht+0x1c1e, %rdi
dec %r10
mov $8, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $54254, %r11
lea addresses_D_ht+0x1901e, %r13
nop
nop
nop
nop
cmp %r10, %r10
mov (%r13), %r12w
nop
xor $9753, %rdi
lea addresses_WC_ht+0x167de, %rdi
nop
nop
nop
xor %r13, %r13
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %r11
nop
xor %rcx, %rcx
lea addresses_normal_ht+0xe43e, %r11
nop
add $27993, %rcx
movl $0x61626364, (%r11)
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x281e, %rsi
nop
nop
nop
nop
cmp $8723, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%rsi)
nop
nop
add %r15, %r15

// Store
lea addresses_WC+0x10d0a, %rdx
nop
nop
nop
nop
add $62493, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovntdq %ymm4, (%rdx)

// Exception!!!
nop
nop
mov (0), %rdi
nop
xor %r15, %r15

// Store
mov $0x17d1d4000000081e, %r10
nop
dec %r11
movb $0x51, (%r10)
and $60599, %r11

// Faulty Load
lea addresses_WT+0x1901e, %rdx
nop
nop
and %rdi, %rdi
mov (%rdx), %r10
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'00': 30}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
