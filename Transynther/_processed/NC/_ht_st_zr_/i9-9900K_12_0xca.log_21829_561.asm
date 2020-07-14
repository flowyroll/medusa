.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x29a5, %r15
add %rdi, %rdi
movl $0x61626364, (%r15)
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x2ca5, %r8
nop
nop
nop
nop
nop
inc %r14
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x1424d, %r13
nop
and %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm6
vmovups %ymm6, (%r13)
nop
nop
and $15469, %rdi
lea addresses_normal_ht+0x11d5, %r8
nop
nop
cmp %r11, %r11
mov (%r8), %rcx
cmp $8854, %r15
lea addresses_D_ht+0x16285, %r11
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm5
vmovups %ymm5, (%r11)
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0xfe95, %rsi
lea addresses_normal_ht+0xa2e5, %rdi
nop
nop
nop
nop
sub %r13, %r13
mov $112, %rcx
rep movsq
nop
nop
nop
add %r8, %r8
lea addresses_UC_ht+0x8599, %r11
nop
inc %rcx
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm5
vpextrq $0, %xmm5, %r15
nop
cmp %r13, %r13
lea addresses_WC_ht+0x71a5, %r15
nop
nop
nop
cmp %r13, %r13
movl $0x61626364, (%r15)
nop
inc %r14
lea addresses_normal_ht+0x119a5, %r11
nop
nop
nop
nop
nop
sub %rsi, %rsi
movups (%r11), %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x7bc5, %r13
clflush (%r13)
nop
nop
nop
nop
add $1406, %r15
vmovups (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
nop
cmp $6415, %r15
lea addresses_UC_ht+0x1d5a5, %rdi
and %r14, %r14
mov (%rdi), %r13d
nop
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x18a05, %r8
nop
cmp %r11, %r11
movb $0x61, (%r8)
inc %r8
lea addresses_A_ht+0x13605, %r8
nop
nop
nop
nop
nop
dec %r14
mov (%r8), %r15d
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_UC_ht+0xa8a5, %rsi
lea addresses_A_ht+0x1d825, %rdi
nop
nop
cmp $20617, %r11
mov $11, %rcx
rep movsl
nop
nop
nop
xor $26072, %rsi
lea addresses_WC_ht+0x18da5, %r14
nop
nop
nop
sub $39080, %r15
vmovups (%r14), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r13
nop
nop
nop
nop
nop
add $18451, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rbx

// Faulty Load
mov $0x33b5b500000001a5, %r8
nop
add $47215, %r13
vmovups (%r8), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'34': 3, '49': 8863, '00': 2110, '48': 10834, '47': 19}
49 00 49 48 49 48 49 48 48 49 48 48 49 48 48 49 48 49 48 49 48 49 48 48 48 49 48 49 48 48 49 48 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 48 49 48 49 48 49 48 49 48 49 48 49 48 49 48 48 49 48 48 49 48 48 48 49 00 49 48 49 48 49 48 49 48 49 48 48 48 49 00 49 48 49 48 49 48 49 48 48 49 48 49 48 48 49 48 48 48 49 48 48 49 48 48 49 00 49 49 00 49 00 49 48 48 49 00 49 48 48 49 48 49 48 48 49 00 49 48 49 48 49 48 49 48 48 48 49 48 49 00 49 48 49 48 48 48 48 48 49 48 49 48 48 49 48 48 49 48 49 48 49 48 49 48 49 48 48 49 48 49 00 49 00 49 00 49 00 48 49 48 49 48 49 48 48 49 48 48 49 48 48 48 49 48 49 48 49 00 49 48 49 48 49 48 48 48 49 48 49 48 48 48 48 48 49 48 48 49 48 48 48 48 49 48 49 48 48 48 49 48 48 49 48 48 49 48 49 00 48 49 48 49 48 48 48 48 49 48 48 49 00 49 00 49 00 49 48 48 49 48 49 48 49 48 49 48 49 48 49 48 49 48 48 48 48 49 48 48 49 48 49 48 49 48 48 48 49 48 49 48 49 00 49 48 49 48 49 48 49 48 48 49 48 48 49 48 48 48 49 48 48 49 48 48 49 48 49 48 49 48 49 48 49 48 49 48 49 48 48 49 48 49 48 49 48 49 48 49 48 49 48 49 48 48 48 48 49 48 48 49 48 49 48 00 49 48 48 49 48 49 48 48 49 48 48 49 48 49 48 48 49 48 49 48 49 48 49 48 49 48 49 48 48 49 48 48 48 48 49 48 48 49 48 49 48 48 48 48 49 48 49 48 49 48 49 48 48 48 49 48 49 48 49 48 48 49 48 49 48 48 48 49 48 48 48 49 00 49 00 49 48 48 49 48 49 48 48 48 49 48 48 49 48 48 49 48 48 49 48 49 48 48 49 48 49 48 48 48 48 49 48 49 48 49 48 49 48 49 48 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 48 49 48 48 48 49 48 49 48 49 48 48 49 48 49 48 49 48 48 49 00 49 00 49 00 49 00 49 00 48 49 48 49 48 49 48 49 48 49 48 49 00 49 48 49 48 48 49 48 48 49 48 48 48 48 49 00 49 00 49 48 48 49 48 49 48 49 48 49 48 48 48 48 49 48 48 48 48 49 48 49 48 49 48 48 48 49 48 49 48 48 48 49 48 48 48 49 48 49 48 48 48 48 48 49 48 49 48 49 48 48 48 48 48 49 48 49 48 49 48 48 48 49 48 49 48 48 48 49 48 48 48 48 48 48 49 48 49 48 48 48 48 49 48 48 48 49 00 49 48 48 48 49 48 49 48 49 48 49 48 49 48 49 48 49 48 49 48 48 49 48 49 48 49 48 49 48 49 48 49 48 48 49 48 48 49 48 49 48 48 48 48 49 48 49 48 49 48 49 48 49 48 49 48 49 48 49 00 48 48 48 49 48 49 48 49 48 49 48 48 49 48 48 48 48 48 49 48 48 48 49 48 49 48 49 48 49 48 49 48 49 00 49 48 48 48 49 48 48 48 49 48 49 48 49 48 48 49 48 49 48 48 49 48 49 48 49 48 49 48 49 48 48 48 48 49 48 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 48 49 48 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 48 48 49 48 48 49 48 49 00 49 00 49 00 49 00 48 49 48 49 48 49 48 49 48 49 48 49 48 49 48 49 00 49 48 49 48 49 48 48 49 48 49 48 49 48 49 48 48 49 48 49 48 49 48 49 00 49 48 48 49 48 48 49 48 48 49 48 48 49 48 49 48 49 00 49 48 49 48 49 48 48 49 48 49 48 48 48 49 48 49 48 48 49 48 49 48 48 48 48 48 48 49 48 48 49 48 49 48 48 49 48 48 49 49 48 49 48 49 00 00 49 49 48 49 48 49 48 49 48 49 49 48 48 48 49 48 48 49 48 48 48 48 49 48 49 48 49 48 48 48 48 49 48 49 48 48 48 48 49 48 48 49 48 48 48 48 48 49 48 49 48 48 49 49 48 49 49 48 48 48 48 48 48 48 49
*/
