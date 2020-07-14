.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1063e, %rsi
lea addresses_A_ht+0x6466, %rdi
nop
nop
add $53709, %rdx
mov $43, %rcx
rep movsw
nop
nop
xor %r9, %r9
lea addresses_D_ht+0xc98a, %r12
nop
nop
nop
nop
nop
xor $45063, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
and $0xffffffffffffffc0, %r12
movntdq %xmm5, (%r12)
nop
nop
add $8361, %r9
lea addresses_WC_ht+0x9086, %rsi
lea addresses_WC_ht+0x14a86, %rdi
nop
sub $57359, %r12
mov $44, %rcx
rep movsb
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0x6806, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %r9, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rbx
push %rdx

// Store
lea addresses_PSE+0x15d86, %r10
nop
nop
nop
nop
cmp $7180, %r15
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
and $5082, %r10

// Store
lea addresses_US+0x509a, %r10
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
nop
nop
and %r15, %r15

// Store
lea addresses_WC+0x17c06, %r11
nop
nop
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %rdx
movq %rdx, (%r11)
nop
nop
nop
nop
dec %rdx

// Store
mov $0x3157b0000000c06, %r15
nop
nop
nop
nop
nop
xor $43555, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovups %ymm0, (%r15)
nop
nop
nop
nop
dec %rdx

// Store
mov $0x6, %rdx
nop
nop
nop
nop
nop
dec %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movups %xmm4, (%rdx)
and %r15, %r15

// Load
lea addresses_D+0x16c7c, %r11
clflush (%r11)
nop
nop
nop
dec %r10
vmovups (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbx
nop
nop
nop
and $32398, %r15

// Store
lea addresses_RW+0x9127, %r15
cmp %rbx, %rbx
movw $0x5152, (%r15)
nop
nop
nop
sub $18690, %r15

// Faulty Load
lea addresses_A+0x1e086, %r13
nop
nop
nop
nop
sub $24846, %rbx
movaps (%r13), %xmm0
vpextrq $0, %xmm0, %r15
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rdx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 3}, 'dst': {'same': True, 'type': 'addresses_A_ht', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'00': 1}
00
*/
