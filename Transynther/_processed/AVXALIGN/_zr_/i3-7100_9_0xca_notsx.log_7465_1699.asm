.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xde4c, %r10
clflush (%r10)
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm5
movups %xmm5, (%r10)
cmp $12370, %rbp
lea addresses_D_ht+0x17d7e, %r10
clflush (%r10)
nop
nop
nop
nop
nop
cmp $42906, %rax
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
sub $32233, %r10
lea addresses_WT_ht+0x774c, %r13
nop
cmp %rsi, %rsi
movw $0x6162, (%r13)
nop
dec %rdx
lea addresses_UC_ht+0x9483, %rbp
nop
nop
nop
nop
nop
xor %rax, %rax
movups (%rbp), %xmm4
vpextrq $1, %xmm4, %r10
nop
lfence
lea addresses_D_ht+0x18614, %rsi
lea addresses_WC_ht+0x18b4c, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $44596, %r8
mov $30, %rcx
rep movsl
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0xb8d2, %rsi
nop
nop
nop
cmp $38387, %rdx
movl $0x61626364, (%rsi)
nop
nop
nop
inc %rbp
lea addresses_WT_ht+0x1d25c, %rsi
lea addresses_normal_ht+0x8266, %rdi
nop
nop
nop
nop
and $45398, %r8
mov $69, %rcx
rep movsw
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x9a0c, %rax
clflush (%rax)
nop
and $45575, %r13
vmovups (%rax), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
nop
xor %r10, %r10
lea addresses_normal_ht+0x12b4c, %rsi
lea addresses_normal_ht+0x6f4c, %rdi
nop
nop
nop
nop
sub %rax, %rax
mov $18, %rcx
rep movsb
nop
nop
nop
xor $19464, %r8
lea addresses_UC_ht+0x59a0, %rsi
lea addresses_WT_ht+0x1be0c, %rdi
nop
nop
nop
sub $19951, %rdx
mov $116, %rcx
rep movsw
nop
nop
nop
nop
xor $57942, %r8
lea addresses_WT_ht+0xcc4c, %rcx
nop
nop
dec %r10
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x19f4c, %r10
nop
nop
nop
inc %rax
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
nop
nop
nop
nop
nop
sub $26421, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x7f2ee10000000cb0, %rdi
nop
nop
nop
nop
nop
sub $44085, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rdi)
nop
add %rdx, %rdx

// Faulty Load
lea addresses_WT+0x1674c, %rcx
clflush (%rcx)
nop
nop
nop
add $26186, %r11
movntdqa (%rcx), %xmm6
vpextrq $0, %xmm6, %rsi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'00': 7465}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
