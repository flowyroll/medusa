.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x20a3, %r14
clflush (%r14)
nop
add %r9, %r9
mov $0x6162636465666768, %r11
movq %r11, (%r14)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x46a3, %r15
nop
cmp $27564, %rbx
mov $0x6162636465666768, %r9
movq %r9, %xmm7
and $0xffffffffffffffc0, %r15
movaps %xmm7, (%r15)
xor $45337, %r11
lea addresses_A_ht+0x8ae3, %r11
clflush (%r11)
nop
nop
nop
inc %r10
mov (%r11), %r15d
nop
nop
nop
nop
and $47242, %r14
lea addresses_UC_ht+0x5d83, %rsi
lea addresses_D_ht+0x1ccb3, %rdi
nop
nop
nop
nop
sub %r11, %r11
mov $42, %rcx
rep movsq
nop
nop
nop
add $28990, %r10
lea addresses_UC_ht+0x1c0a3, %r14
nop
nop
nop
lfence
mov (%r14), %r11w
nop
xor $5550, %rsi
lea addresses_WT_ht+0xf28b, %rsi
lea addresses_normal_ht+0x121a3, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
mov $118, %rcx
rep movsl
nop
nop
nop
nop
add %r9, %r9
lea addresses_WT_ht+0x53d8, %rsi
add $6660, %r15
movb $0x61, (%rsi)
nop
nop
nop
nop
add $30980, %rdi
lea addresses_normal_ht+0x1cbf7, %rsi
lea addresses_UC_ht+0x6439, %rdi
nop
nop
cmp %r10, %r10
mov $69, %rcx
rep movsl
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x113a3, %rsi
lea addresses_UC_ht+0xaf31, %rdi
nop
add %r11, %r11
mov $46, %rcx
rep movsw
nop
nop
nop
nop
sub $24409, %r11
lea addresses_A_ht+0x5acb, %rsi
lea addresses_WC_ht+0x1efa3, %rdi
nop
cmp %r10, %r10
mov $76, %rcx
rep movsw
and %rsi, %rsi
lea addresses_WC_ht+0xfea6, %r10
nop
nop
nop
nop
nop
cmp $184, %rdi
vmovups (%r10), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r14
and $8002, %rcx
lea addresses_A_ht+0x17ea3, %rsi
lea addresses_UC_ht+0x17d63, %rdi
clflush (%rdi)
nop
nop
nop
inc %r14
mov $77, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r14
lea addresses_WT_ht+0x66fb, %rsi
nop
nop
nop
nop
nop
sub $52033, %r14
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
nop
add $23316, %rcx
lea addresses_UC_ht+0x11f53, %rcx
sub $11409, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rcx)
cmp $23422, %r9
lea addresses_D_ht+0xe9a3, %r9
nop
nop
nop
and %r15, %r15
mov (%r9), %r14
nop
and %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rbp
push %rdi

// Store
mov $0x650f990000000a63, %r14
nop
nop
nop
nop
nop
add $24157, %rbp
movb $0x51, (%r14)
nop
nop
nop
nop
and %rdi, %rdi

// Faulty Load
lea addresses_US+0xd8a3, %r12
nop
nop
xor %r14, %r14
mov (%r12), %r10d
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rdi
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
